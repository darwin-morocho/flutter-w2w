import 'package:get_it/get_it.dart';

import '../src/data/repositories_implementation/account_repository_impl.dart';
import '../src/data/repositories_implementation/auth_repository_impl.dart';
import '../src/data/services/local/session.dart';
import '../src/data/services/web/account.dart';
import '../src/data/services/web/auth.dart';
import '../src/domain/repositories/account_repository.dart';
import '../src/domain/repositories/auth_repository.dart';

void registerRepositories() {
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
}

class Repositories {
  Repositories._();

  static AuthRepository get auth => GetIt.I.get();
  static AccountRepository get account => GetIt.I.get();
}
