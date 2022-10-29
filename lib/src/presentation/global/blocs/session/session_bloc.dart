import 'package:flutter_meedu/meedu.dart';

import '../../../../../register/register_repositories.dart';
import '../../../../domain/models/user/user.dart';
import '../../../../domain/repositories/account_repository.dart';
import '../../../../domain/repositories/auth_repository.dart';

enum InitSessionStatus {
  signedIn,
}

final sessionProvider = SimpleProvider(
  (_) => SessionBLoC(
    authRepository: Repositories.auth,
    accountRepository: Repositories.account,
  ),
  autoDispose: false,
);

class SessionBLoC extends SimpleNotifier {
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
          setUser(user, notifyListeners: false);
        },
      );
    }
    _initialized = true;
    notify();
  }

  void setUser(
    User? user, {
    bool notifyListeners = true,
  }) {
    _user = user;
    if (notifyListeners) {
      notify();
    }
  }

  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }
}
