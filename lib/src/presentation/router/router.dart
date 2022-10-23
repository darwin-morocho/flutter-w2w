import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../register/register_repositories.dart';
import '../../core/platform.dart';
import '../../my_app.dart';
import '../global/blocs/app_configuration/app_configuration_bloc.dart';
import '../global/widgets/main_scaffold.dart';
import '../modules/favorites/view/favorites_view.dart';
import '../modules/home/view/home_view.dart';
import '../modules/movie/view/movie_view.dart';
import '../modules/profile/view/profile_view.dart';
import '../modules/sign_in/view/sign_in_view.dart';
import '../modules/tv_show/view/tv_show_view.dart';
import 'auth_guard.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellNavigatorKey = GlobalKey<NavigatorState>();

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
      right: (_) {
        String location = Routes.home;
        if (isIOS) {
          final initialLink = Repositories.deepLinks.initialLink;
          if (initialLink != null) {
            location = initialLink.path;
            if (!location.startsWith('/')) {
              location = '/$location';
            }
          }
        }
        return location;
      },
    );
    _router = GoRouter(
      navigatorKey: rootNavigatorKey,
      routes: [
        ShellRoute(
          navigatorKey: shellNavigatorKey,
          builder: (_, state, child) => MainScaffold(child: child),
          routes: [
            GoRoute(
              path: Routes.home,
              builder: (_, state) => const HomeView(),
              routes: [
                MovieView.route,
                TvShowView.route,
              ],
            ),
            GoRoute(
              path: Routes.favorites,
              builder: (_, state) => const FavoritesView(),
              routes: [
                MovieView.route,
                TvShowView.route,
              ],
            ),
            GoRoute(
              path: Routes.profile,
              builder: (_, state) => const ProfileView(),
              redirect: authGuard,
            ),
          ],
        ),
        GoRoute(
          path: Routes.signIn.path,
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
  static const favorites = '/favorites';
  static const profile = '/profile';
  static const offline = '/offline';
  static const serverError = '/server-error';

  static final movie = _ComposedRoute(
    'movie/:id',
    (int id) => 'movie/$id',
  );

  static final signIn = _ComposedRoute(
    '/sign-in',
    (GoRouter router) => Uri.parse(
      '/sign-in?next=${Uri.encodeFull(router.location)}',
    ).toString(),
  );

  static final tv = _ComposedRoute(
    'tv/:id',
    (int id) => 'tv/$id',
  );
}

class _ComposedRoute<Arguments> {
  _ComposedRoute(this.path, this.builder);

  final String path;
  final String Function(Arguments) builder;
}
