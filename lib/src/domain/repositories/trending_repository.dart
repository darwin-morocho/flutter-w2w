import '../../core/either/either.dart';
import '../failures/http_request/http_request_failure.dart';
import '../models/media/media.dart';

abstract class TrendingRepository {
  Future<Either<HttpRequestFailure, List<Media>>> getTrendingList();
}
