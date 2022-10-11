import '../../../core/http_client.dart';

class AuthService {
  final HttpClient _httpClient;

  AuthService(
    this._httpClient,
  );

  Future<Result<String>> getRequestToken() {
    return _httpClient.request(
      '/authentication/token/new',
      parser: (_, json) => json['request_token'],
    );
  }

  Future<Result<String>> signIn({
    required String username,
    required String password,
    required String requestToken,
  }) {
    return _httpClient.request(
      '/authentication/token/validate_with_login',
      method: 'POST',
      queryParameters: {
        'username': username,
        'password': password,
        'request_token': requestToken,
      },
      parser: (_, json) => json['request_token'],
    );
  }

  Future<Result<String>> createSession(
    String requestToken,
  ) {
    return _httpClient.request(
      '/authentication/session/new',
      method: 'POST',
      queryParameters: {
        'request_token': requestToken,
      },
      parser: (_, json) => json['session_id'],
    );
  }

  Future<Result> deleteSession(
    String sessionId,
  ) {
    return _httpClient.request(
      '/authentication/session',
      method: 'DELETE',
      queryParameters: {
        'session_id': sessionId,
      },
    );
  }
}
