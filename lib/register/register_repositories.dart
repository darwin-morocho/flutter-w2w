import 'package:get_it/get_it.dart';

import '../src/data/repositories_implementation/account_repository_impl.dart';
import '../src/data/repositories_implementation/auth_repository_impl.dart';
import '../src/data/repositories_implementation/genres_repository_impl.dart';
import '../src/data/repositories_implementation/language_repository_impl.dart';
import '../src/data/services/local/language_service.dart';
import '../src/data/services/local/session.dart';
import '../src/data/services/web/account.dart';
import '../src/data/services/web/auth.dart';
import '../src/data/services/web/genre.dart';
import '../src/domain/repositories/account_repository.dart';
import '../src/domain/repositories/auth_repository.dart';
import '../src/domain/repositories/genres_repository.dart';
import '../src/domain/repositories/language_repository.dart';

void registerRepositories({
  required String defaultLanguageCode,
}) {
  final sessionService = SessionService(
    GetIt.I.get(),
  );
  final authService = AuthService(
    GetIt.I.get(),
  );

  final accountService = AccountService(
    GetIt.I.get(),
    sessionService,
  );

  final languageService = LanguageService(defaultLanguageCode);

  GetIt.I.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      sessionService,
      authService,
      accountService,
    ),
  );

  GetIt.I.registerLazySingleton<AccountRepository>(
    () => AccountRepositoryImpl(
      AccountService(
        GetIt.I.get(),
        sessionService,
      ),
    ),
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
}

class Repositories {
  Repositories._();

  static AuthRepository get auth => GetIt.I.get();
  static AccountRepository get account => GetIt.I.get();
  static LanguageRepository get language => GetIt.I.get();
  static GenresRepository get genres => GetIt.I.get();
}
