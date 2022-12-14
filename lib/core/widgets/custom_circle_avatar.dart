import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 13/12/2022 at 08:27.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    Key? key,
    this.imageUrl,
  }) : super(key: key);

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    bool hasError = false;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.borderColor)),
        child: CircleAvatar(
          radius: Dimens.appBarAvatarRadius,
          backgroundColor: AppColors.whiteColor,
          foregroundColor: AppColors.whiteColor,
          backgroundImage: imageUrl == null || hasError
              ? null
              : CachedNetworkImageProvider(imageUrl!, errorListener: () {
                  hasError = true;
                }),
        ),
      ),
    );
  }
}
