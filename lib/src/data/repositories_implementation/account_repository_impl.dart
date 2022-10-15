import '../../core/either/either.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/enums.dart';
import '../../domain/models/user/user.dart';
import '../../domain/repositories/account_repository.dart';
import '../../domain/responses/favorites.dart';
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
    final result = await _service.markAsFavorite(
      mediaId: mediaId,
      favorite: favorite,
      type: type,
    );
    if (result.data != null) {
      return const Right(null);
    }
    return Left(
      handleHttpRequestFailure(result),
    );
  }

  @override
  Future<Either<HttpRequestFailure, FavoritesResponse>> get favorites async {
    final result = await _service.getFavoriteMovies();
    if (result.failure != null) {
      return Left(
        handleHttpRequestFailure(result),
      );
    }
    final tvResult = await _service.getFavoriteTvShows();
    if (tvResult.data != null) {
      return Right(FavoritesResponse(
        result.data!,
        tvResult.data!,
      ));
    }
    return Left(
      handleHttpRequestFailure(tvResult),
    );
  }
}
