import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:provider/provider.dart';

import 'generated/translations.g.dart';
import 'register/register_repositories.dart';
import 'register/register_third_dependencies.dart';
import 'src/my_app.dart';
import 'src/presentation/global/blocs/app_configuration/app_configuration_bloc.dart';
import 'src/presentation/global/blocs/app_theme/bloc.dart';
import 'src/presentation/global/blocs/favorites/bloc.dart';
import 'src/presentation/global/blocs/favorites/state/state.dart';
import 'src/presentation/global/blocs/session/session_bloc.dart';
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
        ChangeNotifierProvider(
          create: (_) => FavoritesBloc(
            const FavoritesMustBeInitialized(),
            accountRepository: Repositories.account,
          ),
        ),
        ChangeNotifierProvider(
          create: (_) => AppThemeBloc(
            Repositories.preferences,
          ),
        ),
      ],
      child: TranslationProvider(
        child: const Loader(
          child: MyApp(),
        ),
      ),
    ),
  );
}
