import 'package:flutter/material.dart';
import 'package:flutter_demo_task/config/extentions/context_extentions.dart';
import 'package:flutter_demo_task/config/utils/constants.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';
import 'package:flutter_demo_task/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 14/12/2022 at 07:07.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class DealOfTheDay extends StatelessWidget {
  const DealOfTheDay({Key? key, required this.favIcon}) : super(key: key);

  final String favIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.space12),
      child: Row(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: context.widthInPercent(25),
                height: context.widthInPercent(25),
                decoration: defaultBoxDecoration.copyWith(border: Border.all(color: Colors.blue.withOpacity(.2))),
              ),
              Positioned(
                  left: 0,
                  top: -10,
                  child: SvgPicture.asset(favIcon)),
            ],
          ),
          SizedBox(width: Dimens.space8,),
          Padding(
            padding: EdgeInsets.all(Dimens.defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Summer Sun Ice Cream Pack',style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
                Text('Pieces 5',style: Theme.of(context).textTheme.bodyMedium,),
                Padding(
                  padding: EdgeInsets.symmetric(vertical:Dimens.defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right:Dimens.space12),
                        child: SvgPicture.asset(Assets.icons.icLocation,width: Dimens.space12,color: AppColors.lightGreyColor,),
                      ),
                      Text('15 Minutes Away',style: Theme.of(context).textTheme.bodyMedium,),

                    ],
                  ),
                ),Padding(
                  padding: EdgeInsets.all(Dimens.space2),
                  child:const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '\$13 ',
                          style: TextStyle(fontSize:12,letterSpacing:2,fontWeight: FontWeight.bold,color: Colors.red),
                        ),
                         TextSpan(text: ' 15',style: TextStyle(fontSize:12,letterSpacing:2,decoration: TextDecoration.lineThrough,color: AppColors.fontGreyColor)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
