import '../../../core/http_client.dart';
import '../../../domain/models/media/media.dart';
import '../../../domain/models/movie/movie.dart';
import '../../../domain/models/performer/performer.dart';
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

  Future<HttpResult<List<Performer>>> getMovieCredits(String id) {
    return _httpClient.request(
      '/movie/$id/credits',
      language: _languageService.languageCode,
      parser: (_, json) {
        final list = (json['cast'] as List)
            .map(
              (e) => Performer.fromJson(e),
            )
            .toList();

        list.sort(
          (a, b) {
            if (a.profilePath == null) {
              return 1;
            } else if (b.profilePath == null) {
              return -1;
            } else {
              return a.order.compareTo(b.order);
            }
          },
        );

        return list;
      },
    );
  }
}
