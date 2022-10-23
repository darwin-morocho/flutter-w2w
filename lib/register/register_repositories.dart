import 'package:app_links/app_links.dart';
import 'package:get_it/get_it.dart';

import '../src/data/repositories_implementation/account_repository_impl.dart';
import '../src/data/repositories_implementation/auth_repository_impl.dart';
import '../src/data/repositories_implementation/deep_links_repository_impl.dart';
import '../src/data/repositories_implementation/genres_repository_impl.dart';
import '../src/data/repositories_implementation/language_repository_impl.dart';
import '../src/data/repositories_implementation/movies_repository_impl.dart';
import '../src/data/repositories_implementation/preferences_repository_impl.dart';
import '../src/data/repositories_implementation/trending_repository_impl.dart';
import '../src/data/repositories_implementation/youtube_repository_impl.dart';
import '../src/data/services/local/language_service.dart';
import '../src/data/services/local/session.dart';
import '../src/data/services/web/account.dart';
import '../src/data/services/web/auth.dart';
import '../src/data/services/web/genre.dart';
import '../src/data/services/web/movies.dart';
import '../src/data/services/web/trending.dart';
import '../src/data/services/web/youtube.dart';
import '../src/domain/repositories/account_repository.dart';
import '../src/domain/repositories/auth_repository.dart';
import '../src/domain/repositories/deep_links_repository.dart';
import '../src/domain/repositories/genres_repository.dart';
import '../src/domain/repositories/language_repository.dart';
import '../src/domain/repositories/movies_repository.dart';
import '../src/domain/repositories/preferences_repository.dart';
import '../src/domain/repositories/trending_repository.dart';
import '../src/domain/repositories/youtube_repository.dart';

Future<void> registerRepositories({
  required String defaultLanguageCode,
}) async {
  final sessionService = SessionService(
    GetIt.I.get(),
  );
  final authService = AuthService(
    GetIt.I.get(),
  );

  final AppLinks appLinks = GetIt.I.get();

  final initialLink = await appLinks.getInitialAppLink();

  final languageService = LanguageService(defaultLanguageCode);

  final accountService = AccountService(
    GetIt.I.get(),
    sessionService,
    languageService,
  );

  GetIt.I.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      sessionService,
      authService,
      accountService,
    ),
  );

  GetIt.I.registerLazySingleton<AccountRepository>(
    () => AccountRepositoryImpl(accountService),
  );

  GetIt.I.registerLazySingleton<LanguageRepository>(
    () => LanguageRepositoryImpl(
      languageService,
    ),
  );

  GetIt.I.registerLazySingleton<GenresRepository>(
    () => GenresRepositoryImpl(
      GenresService(
        GetIt.I.get(),
        languageService,
      ),
    ),
  );

  GetIt.I.registerLazySingleton<TrendingRepository>(
    () => TrendingRepositoryImpl(
      TrendingService(
        GetIt.I.get(),
        languageService,
      ),
    ),
  );

  GetIt.I.registerLazySingleton<MoviesRepository>(
    () => MoviesRepositoryImpl(
      MoviesService(
        GetIt.I.get(),
        languageService,
      ),
    ),
  );

  GetIt.I.registerLazySingleton<PreferencesRepository>(
    () => PreferencesRepositoryImpl(
      GetIt.I.get(),
    ),
  );

  GetIt.I.registerLazySingleton<DeepLinksRepository>(
    () => DeepLinksRepositoryImpl(
      initialLink: initialLink,
    ),
  );

  GetIt.I.registerLazySingleton<YoutubeRepository>(
    () => YoutubeRepositoryImpl(
      YoutubeService(
        GetIt.I.get(),
      ),
    ),
  );
}

class Repositories {
  Repositories._();

  static AuthRepository get auth => GetIt.I.get();
  static AccountRepository get account => GetIt.I.get();
  static LanguageRepository get language => GetIt.I.get();
  static GenresRepository get genres => GetIt.I.get();
  static TrendingRepository get trending => GetIt.I.get();
  static MoviesRepository get movies => GetIt.I.get();
  static PreferencesRepository get preferences => GetIt.I.get();
  static DeepLinksRepository get deepLinks => GetIt.I.get();
  static YoutubeRepository get youtube => GetIt.I.get();
}
