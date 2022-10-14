import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SessionService {
  SessionService(
    this._secureStorage,
  );
  static const key = 'session';

  final FlutterSecureStorage _secureStorage;

  Future<String?> get id => _secureStorage.read(key: key);

  Future<void> setId(String sessionId) {
    return _secureStorage.write(key: key, value: sessionId);
  }

  Future<void> deleteId() {
    return _secureStorage.delete(key: key);
  }
}
