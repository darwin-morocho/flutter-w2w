import 'package:app_links/app_links.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../src/core/env.dart';
import '../src/core/http_client.dart';
import '../src/data/mocks/app_links.dart';

Future<void> registerThirdDependencies() async {
  final httpClient = HttpClient(
    baseUrl: Env.baseUrl,
  );

  final preferences = await SharedPreferences.getInstance();

  Get.lazyPut(
    () => httpClient,
  );

  Get.lazyPut(
    () => const FlutterSecureStorage(),
  );

  Get.lazyPut(
    () => preferences,
  );

  Get.lazyPut<AppLinks>(
    () => kIsWeb ? MockAppLinks() : AppLinks(),
  );
}
