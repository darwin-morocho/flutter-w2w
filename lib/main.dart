import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';

import 'generated/translations.g.dart';
import 'register/register_repositories.dart';
import 'register/register_third_dependencies.dart';
import 'src/my_app.dart';
import 'src/presentation/global/blocs/session/session_bloc.dart';

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
