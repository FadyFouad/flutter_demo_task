import 'package:flutter/material.dart';
import 'package:flutter_demo_task/config/extentions/context_extentions.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 12/13/22 at 17:23 AM.    ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key, required this.index, this.onTap}) : super(key: key);
  final int index;
  final ValueChanged<int>? onTap;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.accentColor,
      unselectedItemColor: AppColors.lightGreyColor,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      backgroundColor: AppColors.bottomNavColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: _BottomNavIcon(isSelected:  widget.index != 0,svgIconPath: Assets.icons.icNavHome,),
          label: (context.translate.grocery),
        ),
        BottomNavigationBarItem(
          icon: _BottomNavIcon(isSelected:  widget.index != 1,svgIconPath: Assets.icons.icNavNews,),
          label: (context.translate.news),
        ),
        //to add more space -> easy solution :)
        const BottomNavigationBarItem(
          icon:SizedBox(),
          label: (''),

        ),
        BottomNavigationBarItem(
          icon: _BottomNavIcon(isSelected:  widget.index != 3,svgIconPath: Assets.icons.icNavFavorites,),
          label: (context.translate.favorite),
        ),
        BottomNavigationBarItem(
          icon: _BottomNavIcon(isSelected: widget.index != 4,svgIconPath:Assets.icons.icNavWallet,),
          label: (context.translate.cart),
        ),
      ],
      currentIndex: widget.index,
      onTap: widget.onTap,
    );
  }
}

class _BottomNavIcon extends StatelessWidget {
  const _BottomNavIcon({
    Key? key,
    required this.isSelected, required this.svgIconPath,
  }) : super(key: key);

  final bool isSelected;
  final String svgIconPath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SvgPicture.asset(svgIconPath,color:isSelected ? AppColors.lightGreyColor: AppColors.accentColor),
    );
  }
}
