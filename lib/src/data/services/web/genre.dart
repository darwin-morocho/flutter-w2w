import '../../../core/http_client.dart';
import '../../../domain/models/genre/genre.dart';
import '../local/language_service.dart';

class GenresService {
  GenresService(
    this._client,
    this._languageService,
  );

  final HttpClient _client;
  final LanguageService _languageService;

  Future<HttpResult<List<Genre>>> getMovieGenres() {
    return _client.request(
      '/genre/movie/list',
      queryParameters: {
        'language': _languageService.languageCode,
      },
      parser: (_, json) {
        return (json['genres'] as List)
            .map(
              (e) => Genre.fromJson(e),
            )
            .toList();
      },
    );
  }

  Future<HttpResult<List<Genre>>> getTvGenres() {
    return _client.request(
      '/genre/tv/list',
      queryParameters: {
        'language': _languageService.languageCode,
      },
      parser: (_, json) {
        return (json['genres'] as List)
            .map(
              (e) => Genre.fromJson(e),
            )
            .toList();
      },
    );
  }
}
