import 'package:flutter/material.dart';
import 'package:flutter_excercise/core/routes/app_route.dart';
import 'package:flutter_excercise/core/localization/app_localizations.dart';
import 'package:flutter_excercise/global_widgets/common_screen/error_screen/common_error_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'settings/core/logic/controller/settings_controller.dart';

class MyApp extends ConsumerWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final themeMode = ref.watch(settingsControllerProvider);

    return MaterialApp.router(
      restorationScopeId: 'app',
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
      ],
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: themeMode,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      builder: (context, widget) {
        ErrorWidget.builder = (errorDetails) => CommonErrorScreen(
              details: errorDetails,
            );

        if (widget != null) return widget;
        throw ('widget is null');
      },
    );
  }
}
