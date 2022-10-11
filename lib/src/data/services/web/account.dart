import '../../../core/http_client.dart';
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
}
