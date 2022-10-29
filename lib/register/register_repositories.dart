import 'package:app_links/app_links.dart';
import 'package:flutter_meedu/meedu.dart';

import '../src/data/repositories_implementation/account_repository_impl.dart';
import '../src/data/repositories_implementation/auth_repository_impl.dart';
import '../src/data/repositories_implementation/deep_links_repository_impl.dart';
import '../src/data/repositories_implementation/genres_repository_impl.dart';
import '../src/data/repositories_implementation/language_repository_impl.dart';
import '../src/data/repositories_implementation/movies_repository_impl.dart';
import '../src/data/repositories_implementation/preferences_repository_impl.dart';
import '../src/data/repositories_implementation/trending_repository_impl.dart';
import '../src/data/repositories_implementation/tv_shows_repository_impl.dart';
import '../src/data/repositories_implementation/youtube_repository_impl.dart';
import '../src/data/services/local/language_service.dart';
import '../src/data/services/local/session.dart';
import '../src/data/services/web/account.dart';
import '../src/data/services/web/auth.dart';
import '../src/data/services/web/genre.dart';
import '../src/data/services/web/movies.dart';
import '../src/data/services/web/trending.dart';
import '../src/data/services/web/tv_shows.dart';
import '../src/data/services/web/youtube.dart';
import '../src/domain/repositories/account_repository.dart';
import '../src/domain/repositories/auth_repository.dart';
import '../src/domain/repositories/deep_links_repository.dart';
import '../src/domain/repositories/genres_repository.dart';
import '../src/domain/repositories/language_repository.dart';
import '../src/domain/repositories/movies_repository.dart';
import '../src/domain/repositories/preferences_repository.dart';
import '../src/domain/repositories/trending_repository.dart';
import '../src/domain/repositories/tv_shows_repository.dart';
import '../src/domain/repositories/youtube_repository.dart';

Future<void> registerRepositories({
  required String defaultLanguageCode,
}) async {
  final sessionService = SessionService(
    Get.find(),
  );
  final authService = AuthService(
    Get.find(),
  );

  final AppLinks appLinks = Get.find();

  final initialLink = await appLinks.getInitialAppLink();

  final languageService = LanguageService(defaultLanguageCode);

  final accountService = AccountService(
    Get.find(),
    sessionService,
    languageService,
  );

  Get.lazyPut<AuthRepository>(
    () => AuthRepositoryImpl(
      sessionService,
      authService,
      accountService,
    ),
  );

  Get.lazyPut<AccountRepository>(
    () => AccountRepositoryImpl(accountService),
  );

  Get.lazyPut<LanguageRepository>(
    () => LanguageRepositoryImpl(
      languageService,
    ),
  );

  Get.lazyPut<GenresRepository>(
    () => GenresRepositoryImpl(
      GenresService(
        Get.find(),
        languageService,
      ),
    ),
  );

  Get.lazyPut<TrendingRepository>(
    () => TrendingRepositoryImpl(
      TrendingService(
        Get.find(),
        languageService,
      ),
    ),
  );

  Get.lazyPut<MoviesRepository>(
    () => MoviesRepositoryImpl(
      MoviesService(
        Get.find(),
        languageService,
      ),
    ),
  );

  Get.lazyPut<TvShowsRepository>(
    () => TvShowsRepositoryImpl(
      TvShowsService(
        Get.find(),
        languageService,
      ),
    ),
  );

  Get.lazyPut<PreferencesRepository>(
    () => PreferencesRepositoryImpl(
      Get.find(),
    ),
  );

  Get.lazyPut<DeepLinksRepository>(
    () => DeepLinksRepositoryImpl(
      initialLink: initialLink,
    ),
  );

  Get.lazyPut<YoutubeRepository>(
    () => YoutubeRepositoryImpl(
      YoutubeService(
        Get.find(),
      ),
    ),
  );
}

class Repositories {
  Repositories._();

  static AuthRepository get auth => Get.find();
  static AccountRepository get account => Get.find();
  static LanguageRepository get language => Get.find();
  static GenresRepository get genres => Get.find();
  static TrendingRepository get trending => Get.find();
  static MoviesRepository get movies => Get.find();
  static TvShowsRepository get tv => Get.find();
  static PreferencesRepository get preferences => Get.find();
  static DeepLinksRepository get deepLinks => Get.find();
  static YoutubeRepository get youtube => Get.find();
}
