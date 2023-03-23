import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

import 'bottom_bar_screen.dart';
import 'drawer_profile_screen.dart';

class HomeProfilePageScreen extends StatefulWidget {
  const HomeProfilePageScreen({Key? key}) : super(key: key);

  @override
  State<HomeProfilePageScreen> createState() => _HomeProfilePageScreenState();
}

class _HomeProfilePageScreenState extends State<HomeProfilePageScreen> {
  AdvancedDrawerController advancedDrawerController =
      AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdropColor: Colors.white,
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xADD7D9DB),
              spreadRadius: 30,
              blurRadius: 30,
              offset: Offset(0, 8))
        ],
      ),
      drawer: const DrawerProfileScreen(),
      child:
          BottomBarScreen(advancedDrawerController: advancedDrawerController),
    );
  }
}
