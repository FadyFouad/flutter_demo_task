import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_demo_task/features/cart/domain/entities/cart_item_model.dart';
import 'package:flutter_demo_task/features/cart/presentation/controller/mock_cart_item_data.dart';
import 'package:get/get.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 14/12/2022 at 21:44.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class CartController extends GetxController{

  var listCartItem = List<CartItem>.empty(growable: true).obs;
  var totalPrice = 0.0.obs;
  @override
  void onInit() {
    getCartItems();
    getTotalPrice();
  }

  @override
  void onClose() {

  }

  @override
  void onReady() {

  }

  getCartItems(){
    listCartItem.value = List<CartItem>.from((jsonArrayCartItems)['data']
        .map((data) => CartItem.fromJson(data))
        .toList());
  }

  addItemToCart(CartItem item){
    item.count++;
    getTotalPrice();
  }

  removeItemFromCart(CartItem item){
    if(item.count>0){
      item.count--;
      getTotalPrice();
    }
  }

  getTotalPrice(){
    totalPrice.value=0;
    listCartItem.value.forEach((element) {
      totalPrice.value += (element.price*element.count);
    });
    update();
  }
}