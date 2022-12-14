import 'package:flutter/material.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../gen/assets.gen.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 13/12/2022 at 08:29.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class AppBarAddressWidget extends StatelessWidget {
  const AppBarAddressWidget({
    Key? key,
    required this.userName,
  }) : super(key: key);

  final String? userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        // height: 50,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.images.btnBackground.path)),
          borderRadius: const BorderRadius.all(
              Radius.circular(Dimens.roundedDiagCornerRadius)),
        ),
        child: Center(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              Assets.icons.icLocation,
              height: 18,
            ),
            SizedBox(
              width: Dimens.space16,
            ),
            Text(userName ?? '',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: AppColors.whiteColor)),
          ],
        )),
      ),
    );
  }
}
