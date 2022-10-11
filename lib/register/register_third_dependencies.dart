import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

import '../src/core/env.dart';
import '../src/core/http_client.dart';

Future<void> registerThirdDependencies() async {
  final httpClient = HttpClient(
    baseUrl: Env.baseUrl,
  );

  GetIt.I.registerLazySingleton(
    () => httpClient,
  );

  GetIt.I.registerLazySingleton(
    () => const FlutterSecureStorage(),
  );
}
