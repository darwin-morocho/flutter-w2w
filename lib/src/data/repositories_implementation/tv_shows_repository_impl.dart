import '../../core/either/either.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/tv_show/tv_show.dart';
import '../../domain/repositories/tv_shows_repository.dart';
import '../mixins/handle_http_request_failure_mixin.dart';
import '../services/web/tv_shows.dart';

class TvShowsRepositoryImpl with HttpRequestFailureMixin implements TvShowsRepository {
  TvShowsRepositoryImpl(this._service);

  final TvShowsService _service;

  @override
  Future<Either<HttpRequestFailure, TvShow>> getById(int id) async {
    final result = await _service.getById(id);
    if (result.data != null) {
      return Right(result.data!);
    }
    return Left(
      handleHttpRequestFailure(result),
    );
  }
}
