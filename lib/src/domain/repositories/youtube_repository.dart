import '../../core/either/either.dart';
import '../failures/http_request/http_request_failure.dart';
import '../models/trailer/trailer.dart';

abstract class YoutubeRepository {
  Future<Either<HttpRequestFailure, List<Trailer>>> getTrailers();
}
