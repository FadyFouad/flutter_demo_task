import 'package:flutter/material.dart';
import 'package:flutter_demo_task/core/widgets/custom_appbar.dart';

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
      appBar: CustomAppBar(userName: ('Mostafa St.'),),
      body:  const Center(
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //
      //   ],
      // ),
    );
  }
}
