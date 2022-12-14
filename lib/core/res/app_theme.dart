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
  colorScheme: const ColorScheme.light().copyWith(primary: AppColors.primaryColor,secondary: AppColors.accentColor),
  textTheme: const TextTheme(
    titleLarge:TextStyle(fontSize: 12,color: AppColors.blackColor,fontWeight: FontWeight.w700) ,
    titleMedium: TextStyle(fontSize: 11,color: AppColors.blackColor,fontWeight: FontWeight.w600),
    titleSmall: TextStyle(fontSize: 9,color: AppColors.blackColor,fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(fontSize: 10,color: AppColors.blackColor,fontWeight: FontWeight.w400),
    bodySmall: TextStyle(fontSize: 10,color: AppColors.blackColor,fontWeight: FontWeight.w300),
  ),
  brightness: Brightness.light,
  iconTheme: const IconThemeData(color: AppColors.primaryColor),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
