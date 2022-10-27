import '../../../core/http_client.dart';
import '../../../domain/models/tv_show/tv_show.dart';
import '../local/language_service.dart';

class TvShowsService {
  TvShowsService(
    this._httpClient,
    this._languageService,
  );

  final HttpClient _httpClient;
  final LanguageService _languageService;

  Future<HttpResult<TvShow>> getById(int id) {
    return _httpClient.request(
      '/tv/$id',
      language: _languageService.languageCode,
      parser: (_, json) => TvShow.fromJson(json),
    );
  }
}
