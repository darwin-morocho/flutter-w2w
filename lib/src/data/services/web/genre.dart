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

  Future<HttpResult<Map<int, Genre>>> getGenres() async {
    Map<int, Genre> parser(int _, dynamic json) {
      final list = json['genres'] as List;
      final map = <int, Genre>{};
      for (final e in list) {
        final genre = Genre.fromJson(e);
        map[genre.id] = genre;
      }
      return map;
    }

    final moviesResult = await _client.request(
      '/genre/movie/list',
      language: _languageService.languageCode,
      parser: parser,
    );
    if (moviesResult.failure != null) {
      return moviesResult;
    }

    final tvResult = await _client.request(
      '/genre/tv/list',
      language: _languageService.languageCode,
      parser: parser,
    );

    if (tvResult.failure != null) {
      return tvResult;
    }

    return HttpResult(
      statusCode: tvResult.statusCode,
      data: {
        ...moviesResult.data!,
        ...tvResult.data!,
      },
    );
  }
}
