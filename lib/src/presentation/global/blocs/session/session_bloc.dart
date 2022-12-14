import 'package:flutter/foundation.dart';

import '../../../../domain/models/user/user.dart';
import '../../../../domain/repositories/account_repository.dart';
import '../../../../domain/repositories/auth_repository.dart';

enum InitSessionStatus {
  signedIn,
}

class SessionBLoC extends ChangeNotifier {
  SessionBLoC({
    required this.authRepository,
    required this.accountRepository,
  });

  final AuthRepository authRepository;
  final AccountRepository accountRepository;

  bool _initialized = false;
  bool get initialized => _initialized;

  bool _mounted = true;
  bool get mounted => _mounted;

  User? _user;
  User? get user => _user;

  Future<void> init() async {
    final session = await authRepository.session;
    if (session != null) {
      final result = await accountRepository.profile;
      result.whenOrNull(
        right: (user) {
          setUser(user, notify: false);
        },
      );
    }
    _initialized = true;
    notifyListeners();
  }

  void setUser(
    User? user, {
    bool notify = true,
  }) {
    _user = user;
    if (notify) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }
}
