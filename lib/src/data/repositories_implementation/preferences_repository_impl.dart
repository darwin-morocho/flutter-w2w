import 'package:shared_preferences/shared_preferences.dart';

import '../../domain/repositories/preferences_repository.dart';

enum Preference { darkMode }

class PreferencesRepositoryImpl implements PreferencesRepository {
  PreferencesRepositoryImpl(this._preferences);

  final SharedPreferences _preferences;

  @override
  bool get darkMode => _preferences.getBool(Preference.darkMode.name) ?? false;

  @override
  Future<void> setDarkMode(bool value) {
    return _preferences.setBool(Preference.darkMode.name, value);
  }
}
