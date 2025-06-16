import 'package:flutter_excercise/core/routes/app_route_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class AppRouterNotifier extends Notifier<GoRouter> {
  @override
  GoRouter build() {
    return GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: false,
      routes: appRoutesList,
    );
  }
}

final appRouterProvider = NotifierProvider<AppRouterNotifier, GoRouter>(() {
  return AppRouterNotifier();
});
