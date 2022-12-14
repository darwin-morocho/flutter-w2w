import '../../core/either/either.dart';
import '../failures/http_request/http_request_failure.dart';
import '../models/enums.dart';
import '../models/user/user.dart';
import '../responses/favorites.dart';

abstract class AccountRepository {
  Future<Either<HttpRequestFailure, User>> get profile;
  Future<Either<HttpRequestFailure, FavoritesResponse>> get favorites;
  Future<Either<HttpRequestFailure, void>> markAsFavorite({
    required int mediaId,
    required bool favorite,
    required MediaType type,
  });
}
