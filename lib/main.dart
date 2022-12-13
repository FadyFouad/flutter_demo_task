import 'package:flutter/material.dart';
import 'package:flutter_demo_task/core/res/app_theme.dart';
import 'package:flutter_demo_task/features/home/presentation/pages/home_page.dart';
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
      theme: themeLight,
      home: const HomePage(),
    );
  }
}

