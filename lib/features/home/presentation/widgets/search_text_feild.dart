import 'package:flutter/material.dart';
import 'package:flutter_demo_task/config/extentions/context_extentions.dart';
import 'package:flutter_demo_task/config/utils/constants.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/core/res/app_dims.dart';
import 'package:flutter_demo_task/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 14/12/2022 at 07:06.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/


class SearchTextField extends StatelessWidget {
  const SearchTextField({Key? key, this.onChanged}) : super(key: key);
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: defaultBoxDecoration.copyWith(color: AppColors.fillTextFeildColor),
        child: Padding(
          padding:  EdgeInsets.only(left: Dimens.space12,right: Dimens.defaultPadding),
          child: TextField(
            decoration: InputDecoration(
              hintText: context.translate.searchInThousandsOfProducts,
              prefixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(Assets.icons.icSearch,height: Dimens.space24,width: Dimens.space24,),
              ),
              prefixIconConstraints: BoxConstraints(maxHeight: Dimens.space36,maxWidth: Dimens.space36),
              contentPadding: EdgeInsets.all(Dimens.defaultPadding),
              border: InputBorder.none,
            ),
            textAlign: TextAlign.center,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
