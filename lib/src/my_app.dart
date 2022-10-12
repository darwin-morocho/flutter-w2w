import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'presentation/global/blocs/app_configuration/app_configuration_bloc.dart';
import 'presentation/global/blocs/session/session_bloc.dart';
import 'presentation/global/mixins/after_first_layout.dart';
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

    return Material(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: sessionInitialized && appConfiguration.initialized
            ? GestureDetector(
                onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                child: MaterialApp.router(
                  title: 'w2w - What To Watch',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                    useMaterial3: true,
                    textTheme: GoogleFonts.nunitoSansTextTheme(),
                  ),
                  routerConfig: router,
                ),
              )
            : const SplashView(),
      ),
    );
  }
}
