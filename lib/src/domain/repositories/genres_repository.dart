import '../../core/either/either.dart';
import '../failures/http_request/http_request_failure.dart';
import '../models/genre/genre.dart';

abstract class GenresRepository {
  Future<Either<HttpRequestFailure, Map<int, Genre>>> getGenres();
}
