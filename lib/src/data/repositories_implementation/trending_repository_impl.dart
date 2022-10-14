import '../../core/either/either.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/media/media.dart';
import '../../domain/repositories/trending_repository.dart';
import '../mixins/handle_http_request_failure_mixin.dart';
import '../services/web/trending.dart';

class TrendingRepositoryImpl with HttpRequestFailureMixin implements TrendingRepository {
  TrendingRepositoryImpl(this._service);

  final TrendingService _service;

  @override
  Future<Either<HttpRequestFailure, List<Media>>> getTrendingList() async {
    final result = await _service.getTrendingList();
    if (result.failure != null) {
      return Left(
        handleHttpRequestFailure(result),
      );
    }
    return Right(result.data!);
  }
}
