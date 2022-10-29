import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'generated/translations.g.dart';
import 'register/register_repositories.dart';
import 'register/register_third_dependencies.dart';
import 'src/my_app.dart';
import 'src/presentation/global/widgets/loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  final defaultLanguageCode = LocaleSettings.currentLocale.languageCode;
  setUrlStrategy(PathUrlStrategy()); // remove # from url
  await registerThirdDependencies();
  await registerRepositories(
    defaultLanguageCode: defaultLanguageCode,
  );

  runApp(
    TranslationProvider(
      child: const Loader(
        child: MyApp(),
      ),
    ),
  );
}
