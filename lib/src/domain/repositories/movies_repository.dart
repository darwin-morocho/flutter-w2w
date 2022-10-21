import '../../core/either/either.dart';
import '../failures/http_request/http_request_failure.dart';
import '../models/media/media.dart';
import '../models/movie/movie.dart';
import '../models/performer/performer.dart';

abstract class MoviesRepository {
  Future<Either<HttpRequestFailure, Movie>> getMovie(String id);
  Future<Either<HttpRequestFailure, List<Media>>> getMovieRecommendations(String id);
  Future<Either<HttpRequestFailure, List<Performer>>> getMovieCredits(String id);
}
