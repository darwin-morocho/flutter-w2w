import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    final SessionBLoC session = context.read();
    session.init();
  }

  @override
  Widget build(BuildContext context) {
    final SessionBLoC session = context.watch();

    return Material(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: session.initialized
            ? MaterialApp.router(
                title: 'w2w - What To Watch',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                routerConfig: router,
              )
            : const SplashView(),
      ),
    );
  }
}
