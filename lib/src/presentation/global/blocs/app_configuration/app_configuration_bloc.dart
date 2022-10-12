import 'package:flutter/foundation.dart';

import '../../../../core/either/either.dart';
import '../../../../domain/failures/http_request/http_request_failure.dart';
import '../../../../domain/models/genre/genre.dart';
import '../../../../domain/repositories/genres_repository.dart';

class AppConfigurationBLoC extends ChangeNotifier {
  AppConfigurationBLoC({
    required this.genresRepository,
  });

  final GenresRepository genresRepository;

  late Either<HttpRequestFailure, Map<int, Genre>> _genresConfig;
  Either<HttpRequestFailure, Map<int, Genre>> get genresConfig => _genresConfig;

  bool _initialized = false;
  bool get initialized => _initialized;

  Map<int, Genre> get genres => _genresConfig.right;

  Future<void> init() async {
    _genresConfig = await genresRepository.getGenres();
    _initialized = true;
    notifyListeners();
  }
}
