import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';

import 'generated/translations.g.dart';
import 'register/register_repositories.dart';
import 'register/register_third_dependencies.dart';
import 'src/presentation/global/blocs/session/session_bloc.dart';
import 'src/presentation/global/mixins/after_first_layout.dart';
import 'src/presentation/global/views/splash/splash_view.dart';
import 'src/presentation/router/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  setUrlStrategy(PathUrlStrategy()); // remove # from url
  await registerThirdDependencies();
  registerRepositories();
  runApp(
    ChangeNotifierProvider(
      create: (_) => SessionBLoC(
        authRepository: Repositories.auth,
        accountRepository: Repositories.account,
      ),
      child: TranslationProvider(
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> with RouterMixin, AfterFirstLayout {
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
