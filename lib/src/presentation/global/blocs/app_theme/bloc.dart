import 'dart:ui';

import 'package:flutter/scheduler.dart';
import 'package:flutter_meedu/meedu.dart';

import '../../../../../register/register_repositories.dart';
import '../../../../domain/repositories/preferences_repository.dart';

final appThemeProvider = SimpleProvider(
  (_) {
    Brightness brightness = SchedulerBinding.instance.window.platformBrightness;
    return AppThemeBloc(
      Repositories.preferences,
      brightness == Brightness.dark,
    );
  },
  autoDispose: false,
);

class AppThemeBloc extends SimpleNotifier {
  AppThemeBloc(
    this._preferencesRepository,
    this._systemDarkMode,
  );
  final bool _systemDarkMode;

  final PreferencesRepository _preferencesRepository;

  bool get darkMode => _preferencesRepository.darkMode ?? _systemDarkMode;

  Future<void> setDarkMode(bool enabled) async {
    await _preferencesRepository.setDarkMode(enabled);
    notify();
  }
}
