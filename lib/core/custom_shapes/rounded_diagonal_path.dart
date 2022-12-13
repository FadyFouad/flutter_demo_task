import 'package:flutter/material.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 13/12/2022 at 06:37.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/


class RoundedDiagonalPathClipper extends CustomClipper<Path> {

  @override
  Path getClip(Size size) {

    double radius = Dimens.roundedDiagCornerRadius;
    double width = size.width;
    double height = size.height;

    Path path = Path()
      ..moveTo(radius, 0)
      ..lineTo(width-radius, 0)
      ..arcToPoint(Offset(width-radius, 0),radius: Radius.circular(radius))
      ..arcToPoint(Offset(width, radius))
      ..arcToPoint(Offset(width, radius),radius: Radius.circular(radius))
      ..arcToPoint(Offset(width, height - radius))
      ..arcToPoint(Offset(width - radius, height),radius: Radius.circular(radius))
      ..lineTo(radius, height)
      ..arcToPoint(Offset(0, height - radius), radius: Radius.circular(radius), clockwise: true)
      ..lineTo(0, radius)
      ..arcToPoint(Offset(radius, 0), radius: Radius.circular(radius))
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}