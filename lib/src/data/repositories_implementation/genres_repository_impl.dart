import '../../core/either/either.dart';
import '../../domain/failures/http_request/http_request_failure.dart';
import '../../domain/models/genre/genre.dart';
import '../../domain/repositories/genres_repository.dart';
import '../mixins/handle_http_request_failure_mixin.dart';
import '../services/web/genre.dart';

class GenresRepositoryImpl with HttpRequestFailureMixin implements GenresRepository {
  GenresRepositoryImpl(this._service);

  final GenresService _service;

  @override
  Future<Either<HttpRequestFailure, List<Genre>>> getGenres() async {
    final moviesResult = await _service.getMovieGenres();

    return moviesResult.when(
      left: (failure) async => Left(
        handleHttpRequestFailure(failure),
      ),
      right: (movieGenres) async {
        final result = await _service.getTvGenres();
        return result.when(
          left: (failure) => Left(
            handleHttpRequestFailure(failure),
          ),
          right: (tvGenres) => Right(
            [
              ...movieGenres.data,
              ...tvGenres.data,
            ],
          ),
        );
      },
    );
  }
}
