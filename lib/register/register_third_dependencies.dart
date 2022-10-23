import 'package:app_links/app_links.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../src/core/env.dart';
import '../src/core/http_client.dart';

Future<void> registerThirdDependencies() async {
  final httpClient = HttpClient(
    baseUrl: Env.baseUrl,
  );

  final preferences = await SharedPreferences.getInstance();

  GetIt.I.registerLazySingleton(
    () => httpClient,
  );

  GetIt.I.registerLazySingleton(
    () => const FlutterSecureStorage(),
  );

  GetIt.I.registerLazySingleton(
    () => preferences,
  );

  GetIt.I.registerLazySingleton(
    () => AppLinks(),
  );
}
