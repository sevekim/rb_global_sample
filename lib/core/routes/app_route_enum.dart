enum AppRouteEnum {
  home,
  settings,
}

extension AppRoutePath on AppRouteEnum {
  String get path {
    switch (this) {
      case AppRouteEnum.home:
        return '/';
      case AppRouteEnum.settings:
        return '/settings';
    }
  }

  String get label => name;
}
