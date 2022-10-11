import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../main.dart';
import '../global/blocs/session/session_bloc.dart';
import '../modules/sign_in/view/sign_in_view.dart';

mixin RouterMixin on State<MyApp> {
  GoRouter? _router;

  GoRouter get router {
    _router ??= GoRouter(
      routes: [
        GoRoute(
          path: Routes.signIn,
          builder: (_, state) => const SignInView(),
          redirect: (context, state) {
            final user = context.read<SessionBLoC>().user;
            if (user != null) {
              return Routes.home;
            }
            return state.location;
          },
        ),
        GoRoute(
          path: Routes.home,
          builder: (_, state) => const Scaffold(),
        ),
        GoRoute(
          path: Routes.disconnected,
          builder: (_, state) => const Scaffold(),
        ),
      ],
      initialLocation: (this as MyAppState).initialLocation,
    );
    return _router!;
  }
}

class Routes {
  Routes._();

  static const signIn = '/sign-in';
  static const home = '/home';
  static const disconnected = '/disconnected';
}
