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

class AddressWidget extends StatelessWidget {
  const AddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left:Dimens.space12),
      child: Container(
        height: context.heightInPercent(5),
        width: context.widthInPercent(45),
        decoration: defaultBoxDecoration.copyWith(color: AppColors.whiteColor),
        child: Row(
          children: [
            SizedBox(width: Dimens.space8,),
            Container(
              height: context.heightInPercent(5),
              width: context.heightInPercent(5),
              decoration: BoxDecoration(
                color: AppColors.fillColor,
                  borderRadius:
                  BorderRadius.circular(8)),
      ),Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Home Address',
                    style: Theme
                        .of(context)
                        .textTheme
                        .titleLarge,
                  ),
                  SizedBox(
                    width: context.widthInPercent(25),
                    child: Text(
                      'Axis Istanbul, B2 Blok Floor 2, Office 11',
                      maxLines: 2,

                      style: Theme
                          .of(context)
                          .textTheme
                          .titleSmall,
                    ),
                  ),
                ],
              ),
      )
      ],
    ),)
    ,
    );
  }
}
