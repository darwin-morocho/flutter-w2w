import '../../../core/http_client.dart';
import '../../../domain/models/enums.dart';
import '../../../domain/models/user/user.dart';
import '../local/session.dart';

class AccountService {
  AccountService(
    this._httpClient,
    this._sessionService,
  );
  final HttpClient _httpClient;
  final SessionService _sessionService;

  Future<HttpResult<User>> getProfile() async {
    return _httpClient.request(
      '/account',
      queryParameters: {
        'session_id': await _sessionService.id ?? '',
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
    return _httpClient.request(
      '/account/favorite',
      queryParameters: {
        'session_id': await _sessionService.id ?? '',
      },
      body: {
        'media_id': mediaId,
        'favorite': favorite,
        'media_type': type.name,
      },
    );
  }
}
