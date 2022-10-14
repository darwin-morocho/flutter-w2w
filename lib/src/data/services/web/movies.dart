import '../../../core/http_client.dart';
import '../../../domain/models/media/media.dart';
import '../../../domain/models/movie/movie.dart';
import '../local/language_service.dart';

class MoviesService {
  MoviesService(
    this._httpClient,
    this._languageService,
  );

  final HttpClient _httpClient;
  final LanguageService _languageService;

  Future<HttpResult<Movie>> getMovie(String id) {
    return _httpClient.request(
      '/movie/$id',
      language: _languageService.languageCode,
      parser: (_, json) => Movie.fromJson(json),
    );
  }

  Future<HttpResult<List<Media>>> getMovieRecommendations(String id) {
    return _httpClient.request(
      '/movie/$id/recommendations',
      language: _languageService.languageCode,
      parser: (_, json) => Media.getMediaList(
        json['results'],
      ),
    );
  }
}