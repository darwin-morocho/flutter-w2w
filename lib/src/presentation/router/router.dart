import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../my_app.dart';
import '../global/blocs/app_configuration/app_configuration_bloc.dart';
import '../modules/sign_in/home/view/home_view.dart';
import '../modules/sign_in/view/sign_in_view.dart';
import 'auth_guard.dart';

mixin RouterMixin on State<MyApp> {
  GoRouter? _router;

  GoRouter get router {
    if (_router != null) {
      return _router!;
    }

    final AppConfigurationBLoC appConfiguration = context.read();
    final initialLocation = appConfiguration.genresConfig.when(
      left: (failure) {
        return failure.maybeWhen(
          network: () => Routes.offline,
          orElse: () => Routes.serverError,
        );
      },
      right: (_) => Routes.home,
    );
    _router = GoRouter(
      routes: [
        ShellRoute(
          builder: (context, state, child) {
            return Scaffold(
              body: SafeArea(
                child: child,
              ),
              bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  if (context.canPop()) {
                    context.pop();
                  }
                },
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.favorite),
                    label: 'favorite',
                  ),
                ],
              ),
            );
          },
          routes: [
            GoRoute(
              path: Routes.home,
              builder: (_, state) => const HomeView(),
              redirect: authGuard,
            ),
          ],
        ),
        GoRoute(
          path: Routes.signIn,
          builder: (_, state) => SignInView(
            nextLocation: state.queryParams['next'],
          ),
          redirect: signInRedirect,
        ),
      ],
      initialLocation: initialLocation,
    );

    return _router!;
  }
}

class Routes {
  Routes._();

  static const home = '/home';
  static const signIn = '/sign-in';
  static const offline = '/offline';
  static const serverError = '/server-error';
}
