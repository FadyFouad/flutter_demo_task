import 'package:flutter/material.dart';
import 'package:flutter_demo_task/config/extentions/context_extentions.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';
import 'package:flutter_demo_task/core/widgets/custom_appbar.dart';
import 'package:flutter_demo_task/core/widgets/lagre_title_widget.dart';
import 'package:flutter_demo_task/features/cart/presentation/widgets/cart_item_widget.dart';
import 'package:flutter_demo_task/features/home/presentation/widgets/address_widget.dart';
import 'package:get/get.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 14/12/2022 at 20:09.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(Dimens.space12),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            LargeTitleWidget(title: context.translate.cart),
            SizedBox(
              // width: context.width,
              // height: context.height,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return CartItemWidget();
                  }),
            ),
          ],

        ),
      ),
    );
  }
}
