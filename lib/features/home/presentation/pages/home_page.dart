import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo_task/config/extentions/context_extentions.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';
import 'package:flutter_demo_task/core/widgets/custom_appbar.dart';
import 'package:flutter_demo_task/core/widgets/lagre_title_widget.dart';
import 'package:flutter_demo_task/features/home/presentation/widgets/address_widget.dart';
import 'package:flutter_demo_task/features/home/presentation/widgets/category_widget.dart';
import 'package:flutter_demo_task/features/home/presentation/widgets/day_deals_widget.dart';
import 'package:flutter_demo_task/features/home/presentation/widgets/search_text_feild.dart';

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
  @override
  Widget build(BuildContext context) {
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
                  return AddressWidget();
                }),
          ),
          SizedBox(height: Dimens.space12),
          LargeTitleWidget(title: context.translate.exploreByCategory,),
          SizedBox(
            height: context.heightInPercent(13),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return CategoryWidget(

                  );
                }),
          ),
          LargeTitleWidget(title: context.translate.dealsOfTheDay,),
          SizedBox(
            height: context.heightInPercent(13),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return DealOfTheDay();
                }),
          ),
          SizedBox(height: Dimens.space12),
         SizedBox(
            height: context.heightInPercent(12),
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return  _OfferWidget();
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
            borderRadius: BorderRadius.circular(Dimens.cornerRadius)
        ),
        child: CachedNetworkImage(
          imageUrl: 'https://i.pinimg.com/originals/0b/c1/94/0bc19452b7a568797c8331be7275e453.png',
          // imageBuilder: (context, imageProvider) => Container(
          //   width: context.widthInPercent(80),
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //         image: imageProvider,
          //         fit: BoxFit.cover,),
          //   ),
          // ),
          placeholder: (context, url) => Center(child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
