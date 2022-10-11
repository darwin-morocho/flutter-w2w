import 'package:what_to_watch/src/core/http_client.dart';
import 'package:what_to_watch/src/data/services/local/session.dart';
import 'package:what_to_watch/src/domain/models/user/user.dart';

class AccountService {
  final HttpClient _httpClient;
  final SessionService _sessionService;

  AccountService(
    this._httpClient,
    this._sessionService,
  );

  Future<Result<User>> getProfile() async {
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
