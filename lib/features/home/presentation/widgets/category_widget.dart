import 'package:flutter/material.dart';
import 'package:flutter_demo_task/config/extentions/context_extentions.dart';
import 'package:flutter_demo_task/config/utils/constants.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 14/12/2022 at 07:06.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.space12),
      child: Column(
        children: [
          Container(
              decoration: defaultBoxDecoration.copyWith(color: AppColors.secondaryColor.withOpacity(.7)),
              child: Image.network('https://www.pngmart.com/files/22/Steak-PNG-Pic.png',width: context.widthInPercent(15),height: context.widthInPercent(15),)),
          Text('steak'),
        ],
      ),
    );
  }
}
