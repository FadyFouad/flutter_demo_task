import 'package:flutter/material.dart';
import 'package:flutter_demo_task/core/res/app_colors.dart';
import 'package:flutter_demo_task/core/widgets/custom_bottom_nav_bar.dart';
import 'package:flutter_demo_task/features/home/presentation/pages/home_page.dart';
import 'package:flutter_demo_task/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

/*
╔═══════════════════════════════════════════════════╗
║ Created by Fady Fouad on 13/12/2022 at 17:02.     ║
║═══════════════════════════════════════════════════║
║ fady.fouad.a@gmail.com.                           ║
╚═══════════════════════════════════════════════════╝
*/

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: index,
        children: [
          const HomePage(),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.amber,
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        onTap: (i) {
          i == 2
              ? null
              : setState(() {
                  index = i;
                });
        },
        index: index,
      ),
      floatingActionButton: FloatingActionButton(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            //todo: get price from controller
            Positioned(
              top: 0,
              child: Text('\$23',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color:AppColors.whiteColor )),
            ),
            SvgPicture.asset(Assets.icons.icNavCart, color: Colors.white),
          ],
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}