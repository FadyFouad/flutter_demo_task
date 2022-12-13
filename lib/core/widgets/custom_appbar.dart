import 'package:flutter/material.dart';
import 'package:flutter_demo_task/core/widgets/appbar_address_widget.dart';
import 'package:flutter_demo_task/core/widgets/custom_circle_avatar.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 12/12/2022 at 20:26.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String? userName;
  final String? userImageUrl;

  CustomAppBar({
    this.userName,
    this.userImageUrl,
    Key? key,
  })  : preferredSize = const Size.fromHeight(68.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBarAddressWidget(userName: userName),
          CustomCircleAvatar(
            imageUrl: userImageUrl,
          ),
        ],
      ),
    );
  }
}
