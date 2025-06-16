import 'package:flutter/material.dart';
import 'package:flutter_excercise/src/settings/core/logic/service/settings_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsController extends StateNotifier<ThemeMode> {
  SettingsController(this._settingsService) : super(ThemeMode.system) {
    _load();
  }

  final SettingsService _settingsService;

  Future<void> _load() async {
    final saved = await _settingsService.themeMode();
    state = saved;
  }

  Future<void> updateThemeMode(ThemeMode newMode) async {
    if (newMode == state) return;
    state = newMode;
    await _settingsService.updateThemeMode(newMode);
  }
}

final settingsControllerProvider =
    StateNotifierProvider<SettingsController, ThemeMode>(
  (ref) => SettingsController(SettingsService()),
);
