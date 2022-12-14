import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 13/12/2022 at 22:36.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/



extension ContextExtention on BuildContext {
  get getSize => MediaQuery.of(this).size;

  get getWidth => MediaQuery.of(this).size.width;

  get getHeight => MediaQuery.of(this).size.height;

  AppLocalizations get translate => AppLocalizations.of(this)!;

  get isMobile {
    final shortestSide = MediaQuery.of(this).size.shortestSide;
    return shortestSide < 600;
  }

  double widthInPercent(double percent) {
    final toDouble = percent / 100;
    return MediaQuery.of(this).size.width * toDouble;
  }

  double heightInPercent(double percent) {
    final toDouble = percent / 100;
    return MediaQuery.of(this).size.height * toDouble;
  }

  static late BuildContext ctx;


}