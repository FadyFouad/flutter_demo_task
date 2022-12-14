import 'package:flutter/material.dart';
import 'package:flutter_demo_task/core/res/app_theme.dart';
import 'package:flutter_demo_task/dashboard.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales:AppLocalizations.supportedLocales,
      theme: themeLight,
      home: const DashboardWidget(),
    );
  }
}
