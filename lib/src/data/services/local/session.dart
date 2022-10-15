import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Session {
  Session({
    required this.sessionId,
    required this.accountId,
  });

  final String sessionId;
  final int accountId;
}

class SessionService {
  SessionService(
    this._secureStorage,
  );
  static const key = 'session';

  final FlutterSecureStorage _secureStorage;

  Future<Session?> get session async {
    final data = await _secureStorage.read(key: key);
    if (data != null) {
      final json = jsonDecode(data);
      return Session(
        sessionId: json['sessionId'],
        accountId: json['accountId'],
      );
    }
    return null;
  }

  Future<void> saveSession({
    required String sessionId,
    required int accountId,
  }) {
    return _secureStorage.write(
      key: key,
      value: jsonEncode(
        {
          'sessionId': sessionId,
          'accountId': accountId,
        },
      ),
    );
  }

  Future<void> deleteSession() {
    return _secureStorage.deleteAll();
  }
}
