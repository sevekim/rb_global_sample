import 'package:flutter_excercise/core/routes/app_route_enum.dart';
import 'package:flutter_excercise/src/home/ui/screens/home.dart';
import 'package:go_router/go_router.dart';

final GoRoute homeRoute = GoRoute(
  name: AppRouteEnum.home.label,
  path: AppRouteEnum.home.path,
  builder: (context, state) => const HomeScreen(),
);
