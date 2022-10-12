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

    if (requestTokenResult.failure != null) {
      return Left(
        handleHttpRequestFailure(requestTokenResult),
      );
    }

    final signInResult = await _authService.signIn(
      password: password,
      requestToken: requestTokenResult.data!,
      username: username,
    );

    if (signInResult.failure != null) {
      return Left(
        handleHttpRequestFailure(signInResult),
      );
    }

    final sessionResult = await _authService.createSession(
      signInResult.data!,
    );

    if (sessionResult.failure != null) {
      return Left(
        handleHttpRequestFailure(sessionResult),
      );
    }

    await _sessionService.setId(sessionResult.data!);

    final profileResult = await _accountService.getProfile();

    if (sessionResult.failure != null) {
      await _sessionService.deleteId();
      return Left(
        handleHttpRequestFailure(profileResult),
      );
    }

    return Right(
      profileResult.data!,
    );
  }

  @override
  Future<void> signOut() {
    return _sessionService.deleteId();
  }
}
