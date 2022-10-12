import '../../../core/http_client.dart';
import '../../../domain/models/enums.dart';
import '../../../domain/models/trending/trending.dart';
import '../local/language_service.dart';

class TrendingService {
  TrendingService(
    this._httpClient,
    this._languageService,
  );

  final HttpClient _httpClient;
  final LanguageService _languageService;

  Future<HttpResult<List<Trending>>> getTrendingList() {
    return _httpClient.request(
      '/trending/all/week',
      language: _languageService.languageCode,
      parser: (_, json) {
        final list = <Trending>[];
        for (final e in json['results'] as List) {
          final mediaTypes = MediaType.values.map((e) => e.name);
          if (mediaTypes.contains(e['media_type'])) {
            list.add(
              Trending.fromJson(e),
            );
          }
        }

        return list;
      },
    );
  }
}
