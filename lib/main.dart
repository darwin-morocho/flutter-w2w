import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';

import 'generated/translations.g.dart';
import 'register/register_repositories.dart';
import 'register/register_third_dependencies.dart';
import 'src/my_app.dart';
import 'src/presentation/global/blocs/app_configuration/app_configuration_bloc.dart';
import 'src/presentation/global/blocs/session/session_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  final defaultLanguageCode = LocaleSettings.currentLocale.languageCode;
  setUrlStrategy(PathUrlStrategy()); // remove # from url
  await registerThirdDependencies();
  registerRepositories(
    defaultLanguageCode: defaultLanguageCode,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SessionBLoC(
            authRepository: Repositories.auth,
            accountRepository: Repositories.account,
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => AppConfigurationBLoC(
            genresRepository: Repositories.genres,
          ),
        ),
      ],
      child: TranslationProvider(
        child: const MyApp(),
      ),
    ),
  );
}
