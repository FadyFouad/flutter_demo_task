import 'package:flutter/material.dart';
import 'package:flutter_demo_task/config/extentions/context_extentions.dart';
import 'package:flutter_demo_task/config/utils/constants.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';
import 'package:flutter_demo_task/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 14/12/2022 at 20:24.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.space12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ItemWidget(),
          CounterWidget(),
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: context.widthInPercent(15),
          height: context.widthInPercent(15),
          decoration: defaultBoxDecoration,
        ),
        SizedBox(
          width: Dimens.space12,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Turkish Steak',style: Theme.of(context).textTheme.titleMedium),
            Padding(
              padding: EdgeInsets.symmetric(vertical:Dimens.space10),
              child: Text('173 Grams'),
            ),
            Text('\$ 25',style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppColors.fontRedColor),),
          ],
        ),
      ],
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(Assets.icons.icMinus),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Dimens.space16),
          child: Text('2',style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 18)),
        ),
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(Assets.icons.icPlus),
        ),
      ],
    );
  }
}
