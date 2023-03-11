import 'package:flutter/material.dart';
import 'package:wastra_app/profile_screen.dart';

import 'favorite_screen.dart';
import 'home_screen.dart';
import 'order_complete_screen.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int currentIndex = 0;

  List<Widget> screenList = [
    const HomePageScreen(),
    const OrderCompleteScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: const Color(0xFFF67952),
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/hhome.png"),
              ),
              label: 'home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/hbuy.png"),
              ),
              label: 'camera',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/hheart.png"),
              ),
              label: 'search',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/hprofile.png"),
              ),
              label: 'home',
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
