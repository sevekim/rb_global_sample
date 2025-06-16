import 'package:flutter_excercise/core/routes/app_route_enum.dart';
import 'package:flutter_excercise/src/settings/ui/settings_view.dart';
import 'package:go_router/go_router.dart';

final GoRoute settingsRoute = GoRoute(
  name: AppRouteEnum.settings.label,
  path: AppRouteEnum.settings.path,
  builder: (context, state) {
    return SettingsView();
  },
);
