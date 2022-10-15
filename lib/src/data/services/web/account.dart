import '../../../core/http_client.dart';
import '../../../domain/models/enums.dart';
import '../../../domain/models/media/media.dart';
import '../../../domain/models/user/user.dart';
import '../local/language_service.dart';
import '../local/session.dart';

class AccountService {
  AccountService(
    this._httpClient,
    this._sessionService,
    this._languageService,
  );
  final HttpClient _httpClient;
  final SessionService _sessionService;
  final LanguageService _languageService;

  Future<HttpResult<User>> getProfile({
    String? sessionId,
  }) async {
    return _httpClient.request(
      '/account',
      queryParameters: {
        'session_id': sessionId ?? (await _sessionService.session)?.sessionId ?? '',
      },
      parser: (_, json) {
        return User.fromJson(json);
      },
    );
  }

  Future<HttpResult> markAsFavorite({
    required int mediaId,
    required bool favorite,
    required MediaType type,
  }) async {
    final session = await _sessionService.session;
    return _httpClient.request(
      '/account/${session?.accountId}/favorite',
      method: 'post',
      queryParameters: {
        'session_id': session?.sessionId ?? '',
      },
      body: {
        'media_id': mediaId,
        'favorite': favorite,
        'media_type': type.name,
      },
    );
  }

  Future<HttpResult<List<Media>>> getFavoriteMovies() async {
    final session = await _sessionService.session;
    return _httpClient.request(
      '/account/${session?.accountId}/favorite/movies',
      queryParameters: {
        'session_id': session?.sessionId ?? '',
        'sort_by': 'created_at.desc',
      },
      language: _languageService.languageCode,
      parser: (_, json) => Media.getMediaList(
        (json['results'] as List),
        mediaType: MediaType.movie,
      ),
    );
  }

  Future<HttpResult<List<Media>>> getFavoriteTvShows() async {
    final session = await _sessionService.session;
    return _httpClient.request(
      '/account/${session?.accountId}/favorite/tv',
      queryParameters: {
        'session_id': session?.sessionId ?? '',
        'sort_by': 'created_at.desc',
      },
      language: _languageService.languageCode,
      parser: (_, json) => Media.getMediaList(
        json['results'],
        mediaType: MediaType.tv,
      ),
    );
  }
}
