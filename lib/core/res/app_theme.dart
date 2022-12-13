import 'package:flutter/material.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/gen/fonts.gen.dart';


/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 12/12/2022 at 22:18.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

/// Light theme
ThemeData themeLight = ThemeData(
  fontFamily: FontFamily.poppins,
  primaryColor: AppColors.primaryColor,
  colorScheme: const ColorScheme.light().copyWith(primary: AppColors.primaryColor,secondary: AppColors.secondaryColor),
  textTheme: const TextTheme(
    titleMedium: TextStyle(fontSize: 14,color: AppColors.blackColor,fontWeight: FontWeight.w500)
  ),
  brightness: Brightness.light,
  iconTheme: const IconThemeData(color: AppColors.primaryColor),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
