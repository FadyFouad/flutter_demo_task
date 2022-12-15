import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_task/config/extentions/context_extentions.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';
import 'package:flutter_demo_task/core/widgets/lagre_title_widget.dart';
import 'package:flutter_demo_task/features/cart/domain/entities/cart_item_model.dart';
import 'package:flutter_demo_task/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:flutter_demo_task/features/home/presentation/widgets/address_widget.dart';
import 'package:flutter_demo_task/features/home/presentation/widgets/category_widget.dart';
import 'package:flutter_demo_task/features/home/presentation/widgets/day_deals_widget.dart';
import 'package:flutter_demo_task/features/home/presentation/widgets/search_text_feild.dart';
import 'package:flutter_demo_task/gen/assets.gen.dart';
import 'package:get/get.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 12/12/2022 at 19:58.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CartItem> list = [
    CartItem(
      id: 12,
      name: 'Item 1',
      price: 13,
      count: 1,
      quantity: '',
      imageUrl: '',
    ),
    CartItem(
      id: 13,
      name: 'Item 13',
      price: 13,
      count: 1,
      quantity: '',
      imageUrl: '',
    ),
    CartItem(
      id: 14,
      name: 'Item 14',
      price: 14,
      count: 1,
      quantity: '',
      imageUrl: '',
    ),
    CartItem(
      id: 15,
      name: 'Item 15',
      price: 15,
      count: 1,
      quantity: '',
      imageUrl: '',
    ),
    CartItem(
      id: 16,
      name: 'Item 15',
      price: 15,
      count: 1,
      quantity: '',
      imageUrl: '',
    ),
    CartItem(
      id: 17,
      name: 'Item 15',
      price: 15,
      count: 1,
      quantity: '',
      imageUrl: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    FavoritesController controller = Get.put(FavoritesController());

    return Scaffold(
      body: ListView(
        children: [
          const SearchTextField(),
          SizedBox(height: Dimens.space16),
          SizedBox(
            height: context.heightInPercent(7),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return const AddressWidget();
                }),
          ),
          SizedBox(height: Dimens.space12),
          LargeTitleWidget(
            title: context.translate.exploreByCategory,
          ),
          SizedBox(
            height: context.heightInPercent(13),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return const CategoryWidget();
                }),
          ),
          LargeTitleWidget(
            title: context.translate.dealsOfTheDay,
          ),
          SizedBox(
            height: context.heightInPercent(13),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                itemBuilder: (_, index) {
                  return InkWell(
                    onTap: () {
                      if (controller.listFav.contains(list[index])) {
                        Get.snackbar('Done', 'Item Removed to Fav',
                            colorText: AppColors.whiteColor,
                            backgroundColor: AppColors.primaryColor);
                        controller.removeItemFromFav(list[index]);
                      } else {
                        controller.addItemToFav(list[index]);
                        Get.snackbar('Done', 'Item Added to Fav',
                            colorText: AppColors.whiteColor,
                            backgroundColor: AppColors.primaryColor);
                      }
                    },
                    child: Obx(() {
                      return DealOfTheDay(
                        //todo : Get Fav Elements
                        favIcon: controller.listFav.contains(list[index])
                            ? Assets.icons.icHeartFilled
                            : Assets.icons.icHeartBorder,
                      );
                    }),
                  );
                }),
          ),
          SizedBox(height: Dimens.space12),
          SizedBox(
            height: context.heightInPercent(12),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return const _OfferWidget();
                }),
          ),
        ],
      ),
    );
  }
}

class _OfferWidget extends StatelessWidget {
  const _OfferWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.defaultPadding),
      child: Container(
        width: context.widthInPercent(80),
        height: context.heightInPercent(15),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(Dimens.cornerRadius)),
        child: CachedNetworkImage(
          imageUrl:
          'https://i.pinimg.com/originals/0b/c1/94/0bc19452b7a568797c8331be7275e453.png',
          // imageBuilder: (context, imageProvider) => Container(
          //   width: context.widthInPercent(80),
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: imageProvider,
          //         fit: BoxFit.cover,),
          //   ),
          // ),
          placeholder: (context, url) =>
          const Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
