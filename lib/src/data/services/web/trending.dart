import '../../../core/http_client.dart';
import '../../../domain/models/media/media.dart';
import '../local/language_service.dart';

class TrendingService {
  TrendingService(
    this._httpClient,
    this._languageService,
  );

  final HttpClient _httpClient;
  final LanguageService _languageService;

  Future<HttpResult<List<Media>>> getTrendingList() {
    return _httpClient.request(
      '/trending/all/week',
      language: _languageService.languageCode,
      parser: (_, json) => Media.getMediaList(json['results']),
    );
  }
}
