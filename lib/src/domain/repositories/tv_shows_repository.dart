import '../../core/either/either.dart';
import '../failures/http_request/http_request_failure.dart';
import '../models/tv_show/tv_show.dart';

abstract class TvShowsRepository {
  Future<Either<HttpRequestFailure, TvShow>> getById(int id);
}
