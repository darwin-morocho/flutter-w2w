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
  Future<Either<HttpRequestFailure, Map<int, Genre>>> getGenres() async {
    final result = await _service.getGenres();

    if (result.data != null) {
      return Right(result.data!);
    }

    return Left(
      handleHttpRequestFailure(result),
    );
  }
}
