import 'dart:async';
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import '../generated/translations.g.dart';
import 'presentation/global/app_colors.dart';
import 'presentation/global/blocs/app_configuration/app_configuration_bloc.dart';
import 'presentation/global/blocs/app_theme/bloc.dart';
import 'presentation/global/blocs/session/session_bloc.dart';
import 'presentation/global/mixins/after_first_layout.dart';
import 'presentation/global/theme.dart';
import 'presentation/global/views/splash/splash_view.dart';
import 'presentation/router/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with RouterMixin, AfterFirstLayout {
  @override
  FutureOr<void> onAfterFirstLayout() {
    final AppConfigurationBLoC appConfiguration = context.read();
    final SessionBLoC session = context.read();
    appConfiguration.init();
    session.init();
  }

  @override
  Widget build(BuildContext context) {
    final sessionInitialized = context.select<SessionBLoC, bool>(
      (bloc) => bloc.initialized,
    );
    final AppConfigurationBLoC appConfiguration = context.watch();

    final darkMode = context.select<AppThemeBloc, bool>(
      (bloc) => bloc.darkMode,
    );

    return Container(
      color: darkMode ? AppColors.dark700 : Colors.white,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (child, animation) {
          return AnimatedBuilder(
            animation: animation,
            child: child,
            builder: (_, child) => ClipPath(
              clipper: _Clipper(animation.value),
              child: child,
            ),
          );
        },
        layoutBuilder: (currentChild, _) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: currentChild,
          );
        },
        child: sessionInitialized && appConfiguration.initialized
            ? GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: MaterialApp.router(
                  title: 'w2w - What To Watch',
                  debugShowCheckedModeBanner: false,
                  theme: getTheme(darkMode),
                  routerConfig: router,
                  locale: TranslationProvider.of(context).flutterLocale,
                  supportedLocales: LocaleSettings.supportedLocales,
                  localizationsDelegates: GlobalMaterialLocalizations.delegates,
                ),
              )
            : const SplashView(),
      ),
    );
  }
}

class _Clipper extends CustomClipper<Path> {
  _Clipper(this.fraction);

  final double fraction;

  @override
  Path getClip(Size size) {
    final Offset center = Offset(size.width * 0.5, size.height * 0.5);
    const minRadius = 0.0;

    final w = max(center.dx, size.width - center.dx);
    final h = max(center.dy, size.height - center.dy);
    final maxRadius = sqrt(w * w + h * h);

    return Path()
      ..addOval(
        Rect.fromCircle(
          center: center,
          radius: lerpDouble(
            minRadius,
            maxRadius,
            fraction,
          )!,
        ),
      );
  }

  @override
  bool shouldReclip(_) => true;
}
