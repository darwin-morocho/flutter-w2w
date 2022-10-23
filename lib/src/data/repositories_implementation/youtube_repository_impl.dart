import '../../core/either/either.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/trailer/trailer.dart';
import '../../domain/repositories/youtube_repository.dart';
import '../mixins/handle_http_request_failure_mixin.dart';
import '../services/web/youtube.dart';

class YoutubeRepositoryImpl with HttpRequestFailureMixin implements YoutubeRepository {
  YoutubeRepositoryImpl(this._service);

  final YoutubeService _service;

  @override
  Future<Either<HttpRequestFailure, List<Trailer>>> getTrailers() async {
    final result = await _service.getTrailers();
    if (result.data != null) {
      return Right(result.data!);
    }

    return Left(
      handleHttpRequestFailure(result),
    );
  }
}
