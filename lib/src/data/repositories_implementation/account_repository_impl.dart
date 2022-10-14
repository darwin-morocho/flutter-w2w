import '../../core/either/either.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/enums.dart';
import '../../domain/models/user/user.dart';
import '../../domain/repositories/account_repository.dart';
import '../mixins/handle_http_request_failure_mixin.dart';
import '../services/web/account.dart';

class AccountRepositoryImpl with HttpRequestFailureMixin implements AccountRepository {
  AccountRepositoryImpl(this._service);

  final AccountService _service;

  @override
  Future<Either<HttpRequestFailure, User>> get profile async {
    final result = await _service.getProfile();
    if (result.data != null) {
      return Right(
        result.data!,
      );
    }

    return Left(
      handleHttpRequestFailure(result),
    );
  }

  @override
  Future<Either<HttpRequestFailure, void>> markAsFavorite({
    required int mediaId,
    required bool favorite,
    required MediaType type,
  }) async {
    final result = await _service.getProfile();
    if (result.data != null) {
      return const Right(null);
    }
    return Left(
      handleHttpRequestFailure(result),
    );
  }
}
