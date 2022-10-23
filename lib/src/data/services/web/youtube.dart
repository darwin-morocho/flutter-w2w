import '../../../core/env.dart';
import '../../../core/http_client.dart';
import '../../../domain/models/trailer/trailer.dart';

class YoutubeService {
  YoutubeService(this.httpClient);

  final HttpClient httpClient;

  Future<HttpResult<List<Trailer>>> getTrailers() {
    return httpClient.request(
      '${Env.youtubeBaseUrl}/search',
      headers: {
        'X-Android-Package': 'app.meedu.w2w',
        'X-Ios-Bundle-Identifier': 'app.meedu.w2w',
      },
      queryParameters: {
        'part': 'snippet',
        'channelId': Env.youtubeChannelId,
        'maxResults': '50',
        'type': 'video',
        'order': 'date',
        'key': Env.youtubeApiKey,
      },
      useApiKey: false,
      parser: (_, json) => (json['items'] as List)
          .map(
            (e) => Trailer.fromJson(e),
          )
          .toList(),
    );
  }
}
