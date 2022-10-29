import 'package:flutter/foundation.dart';

import '../../../../domain/repositories/preferences_repository.dart';

class AppThemeBloc extends ChangeNotifier {
  AppThemeBloc(
    this._preferencesRepository,
    this._systemDarkMode,
  );
  final bool _systemDarkMode;

  final PreferencesRepository _preferencesRepository;

  bool get darkMode => _preferencesRepository.darkMode ?? _systemDarkMode;

  Future<void> setDarkMode(bool enabled) async {
    await _preferencesRepository.setDarkMode(enabled);
    notifyListeners();
  }
}
