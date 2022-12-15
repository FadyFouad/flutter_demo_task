import 'package:flutter/material.dart';
import 'package:flutter_demo_task/features/favorites/presentation/controller/favorites_controller.dart';
import 'package:flutter_demo_task/features/home/presentation/widgets/day_deals_widget.dart';
import 'package:flutter_demo_task/gen/assets.gen.dart';
import 'package:get/get.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 15/12/2022 at 05:17.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FavoritesController>(builder: (logic) {
      var favList = logic.listFav.value;
      return ListView.builder(
          shrinkWrap: true,
          itemCount: favList.length,
          itemBuilder: (_, index) {
            return DealOfTheDay(
              favIcon: Assets.icons.icHeartFilled,
            );
          });
    });
  }
}
