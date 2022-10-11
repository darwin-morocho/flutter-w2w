import 'package:flutter/material.dart';

import '../../main.dart';
import '../../register/register_repositories.dart';
import '../../router.dart';

mixin SessionChekerMixin on State<MyApp> {
  bool _initialized = false;
  bool get initialized => _initialized;

  late final String initialLocation;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _checkSession();
      },
    );
  }

  Future<void> _checkSession() async {
    final sessionId = await Repositories.auth.sessionId;
    if (sessionId == null) {
      initialLocation = Routes.signIn;
    } else {
      final result = await Repositories.account.profile;
      result.when(
        left: (failure) {
          failure.maybeWhen(
            network: () => initialLocation = Routes.signIn,
            orElse: () => Routes.signIn,
          );
        },
        right: (user) {
          initialLocation = Routes.home;
        },
      );
    }
    setState(() {
      _initialized = true;
    });
  }
}
