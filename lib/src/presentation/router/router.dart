import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../my_app.dart';
import '../modules/sign_in/home/view/home_view.dart';
import '../modules/sign_in/view/sign_in_view.dart';
import 'auth_guard.dart';

mixin RouterMixin on State<MyApp> {
  final router = GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (_, state) => const HomeView(),
        redirect: authGuard,
      ),
      GoRoute(
        path: Routes.signIn,
        builder: (_, state) => SignInView(
          nextLocation: state.queryParams['next'],
        ),
        redirect: signInRedirect,
      ),
    ],
    initialLocation: Routes.home,
  );
}

class Routes {
  Routes._();

  static const home = '/';
  static const signIn = '/sign-in';
}
