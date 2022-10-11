import '../../core/either/either.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/user/user.dart';
import '../../domain/repositories/auth_repository.dart';
import '../mixins/handle_http_request_failure_mixin.dart';
import '../services/local/session.dart';
import '../services/web/account.dart';
import '../services/web/auth.dart';

class AuthRepositoryImpl with HttpRequestFailureMixin implements AuthRepository {
  AuthRepositoryImpl(
    this._sessionService,
    this._authService,
    this._accountService,
  );

  final SessionService _sessionService;
  final AuthService _authService;
  final AccountService _accountService;

  @override
  Future<String?> get sessionId => _sessionService.id;

  @override
  Future<Either<HttpRequestFailure, User>> signIn({
    required String username,
    required String password,
  }) async {
    final requestTokenResult = await _authService.getRequestToken();

    if (requestTokenResult.isLeft) {
      return Left(
        handleHttpRequestFailure(requestTokenResult.left),
      );
    }

    final signInResult = await _authService.signIn(
      password: password,
      requestToken: requestTokenResult.right.data,
      username: username,
    );

    if (signInResult.isLeft) {
      return Left(
        handleHttpRequestFailure(signInResult.left),
      );
    }

    final sessionResult = await _authService.createSession(
      signInResult.right.data,
    );

    if (sessionResult.isLeft) {
      return Left(
        handleHttpRequestFailure(sessionResult.left),
      );
    }

    await _sessionService.setId(sessionResult.right.data);

    final profileResult = await _accountService.getProfile();

    if (sessionResult.isLeft) {
      await _sessionService.deleteId();
      return Left(
        handleHttpRequestFailure(profileResult.left),
      );
    }

    return Right(
      profileResult.right.data,
    );
  }

  @override
  Future<void> signOut() {
    return _sessionService.deleteId();
  }
}
