import '../../core/either/either.dart';
import '../failures/http_request/http_request_failure.dart';
import '../models/trending/trending.dart';

abstract class TrendingRepository {
  Future<Either<HttpRequestFailure, List<Trending>>> getTrendingList();
}
