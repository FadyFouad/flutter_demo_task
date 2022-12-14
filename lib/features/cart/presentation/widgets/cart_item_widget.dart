import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_task/config/extentions/context_extentions.dart';
import 'package:flutter_demo_task/config/utils/constants.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';
import 'package:flutter_demo_task/features/cart/domain/entities/cart_item_model.dart';
import 'package:flutter_demo_task/features/cart/presentation/controller/cart_controller.dart';
import 'package:flutter_demo_task/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 14/12/2022 at 20:24.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class CartItemWidget extends StatelessWidget {
  const CartItemWidget(
      {Key? key, required this.item, /*required this.onTapAdd, required this.onTapAddRemove, required this.count*/
      }) : super(key: key);

  // final VoidCallback onTapAdd;
  // final VoidCallback onTapAddRemove;
  final CartItem item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.space12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ItemWidget(item: item,),
          GetBuilder<CartController>(builder: (logic) {
            return CounterWidget(
              item: (item),
            );
          }),
        ],
      ),
    );
  }
}

class ItemWidget extends StatelessWidget {
  const ItemWidget({Key? key, required this.item}) : super(key: key);
final CartItem item;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: context.widthInPercent(15),
          height: context.widthInPercent(15),
          decoration: defaultBoxDecoration,
          child: CachedNetworkImage(
            imageUrl: '${item.imageUrl}',
            imageBuilder: (_,image){
              return Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.cornerRadius),
                  image: DecorationImage(
                    image: image,
                    fit: BoxFit.cover
                  ),
                )
              );
            },
            fit: BoxFit.fill,
            placeholder: (_,__){
              return const CircularProgressIndicator();
            },
          ),
        ),
        SizedBox(
          width: Dimens.space12,
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(item.name??'', style: Theme
                .of(context)
                .textTheme
                .titleMedium),
            Padding(
              padding: EdgeInsets.symmetric(vertical: Dimens.space10),
              child: Text(item.quantity??''),
            ),
            Text('\$ ${item.price}', style: Theme
                .of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: AppColors.fontRedColor),),
          ],
        ),
      ],
    );
  }
}

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key, required this.item})
      : super(key: key);

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(builder: (logic) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              logic.removeItemFromCart(item);
            },
            child: SvgPicture.asset(Assets.icons.icMinus),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.space16),
            child: Text('${item.count}', style: Theme
                .of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontSize: 18)),
          ),
          InkWell(
            onTap: (){
              logic.addItemToCart(item);
            },            child: SvgPicture.asset(Assets.icons.icPlus),
          ),
        ],
      );
    });
  }
}
