import '../../core/either/either.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/media/media.dart';
import '../../domain/models/movie/movie.dart';
import '../../domain/models/performer/performer.dart';
import '../../domain/repositories/movies_repository.dart';
import '../mixins/handle_http_request_failure_mixin.dart';
import '../services/web/movies.dart';

class MoviesRepositoryImpl with HttpRequestFailureMixin implements MoviesRepository {
  MoviesRepositoryImpl(this._service);

  final MoviesService _service;

  @override
  Future<Either<HttpRequestFailure, Movie>> getMovie(String id) async {
    final result = await _service.getMovie(id);
    if (result.data != null) {
      return Right(result.data!);
    }
    return Left(
      handleHttpRequestFailure(result),
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<Media>>> getMovieRecommendations(String id) async {
    final result = await _service.getMovieRecommendations(id);
    if (result.data != null) {
      return Right(result.data!);
    }
    return Left(
      handleHttpRequestFailure(result),
    );
  }

  @override
  Future<Either<HttpRequestFailure, List<Performer>>> getMovieCredits(String id) async {
    final result = await _service.getMovieCredits(id);
    if (result.data != null) {
      return Right(result.data!);
    }
    return Left(
      handleHttpRequestFailure(result),
    );
  }
}
