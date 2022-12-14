import 'package:flutter/material.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 14/12/2022 at 19:15.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/


class LargeTitleWidget extends StatelessWidget {
  const LargeTitleWidget({
    Key? key, required this.title,
  }) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.space12),
      child: Text(title,style: Theme.of(context).textTheme.titleLarge,),
    );
  }
}
