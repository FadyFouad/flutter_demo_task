import 'package:flutter_demo_task/features/cart/domain/entities/cart_item_model.dart';
import 'package:get/get.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 15/12/2022 at 05:21.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/


class FavoritesController extends GetxController{
  var listFav = List<CartItem>.empty(growable: true).obs;
  var totalPrice = 0.0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {}

  @override
  void onReady() {}


  addItemToFav(CartItem item) {
    listFav.add(item);
    update();
  }
  removeItemFromFav(CartItem item) {
    listFav.remove(item);
    update();
  }
}
