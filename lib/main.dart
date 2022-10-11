import 'package:flutter/material.dart';

import 'register/register_repositories.dart';
import 'register/register_third_dependencies.dart';
import 'router.dart';
import 'src/presentation/global/views/splash/splash_view.dart';
import 'src/session_checker/session_checker.dart';

void main() async {
  await registerThirdDependencies();
  registerRepositories();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> with RouterMixin, SessionChekerMixin {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: initialized
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
