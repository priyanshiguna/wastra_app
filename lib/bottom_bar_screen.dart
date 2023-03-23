import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:wastra_app/profile_screen.dart';

import 'favorite_screen.dart';
import 'home_screen.dart';
import 'order_complete_screen.dart';

class BottomBarScreen extends StatefulWidget {
  final AdvancedDrawerController? advancedDrawerController;
  const BottomBarScreen({
    Key? key,
    this.advancedDrawerController,
  }) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int currentIndex = 0;

  List<Widget> screenList = [];

  List imageList = [
    {
      "id": 0,
      "image": "assets/images/hhome.png",
      "select_image": "assets/images/hhometwo.png",
    },
    {
      "id": 1,
      "image": "assets/images/hbuy.png",
      "select_image": "assets/images/hbuytwo.png",
    },
    {
      "id": 2,
      "image": "assets/images/hheart.png",
      "select_image": "assets/images/hhearttwo.png",
    },
    {
      "id": 3,
      "image": "assets/images/hprofile.png",
      "select_image": "assets/images/hprofiletwo.png",
    },
  ];

  @override
  void initState() {
    // TODO: implement initState
    screenList = [
      HomePageScreen(advancedDrawerController: widget.advancedDrawerController),
      const OrderCompleteScreen(),
      const FavoriteScreen(),
      const ProfilePageScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList[currentIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   showSelectedLabels: false,
      //   showUnselectedLabels: false,
      //   selectedItemColor: const Color(0xFFF67952),
      //   currentIndex: currentIndex,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage(
      //             imageindex
      //                 ? "assets/images/hbuytwo.png"
      //                 : "assets/images/hhome.png",
      //           ),
      //         ),
      //         label: 'home',
      //         backgroundColor: Colors.blue),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/hbuy.png"),
      //         ),
      //         label: 'camera',
      //         backgroundColor: Colors.blue),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/hheart.png"),
      //         ),
      //         label: 'search',
      //         backgroundColor: Colors.blue),
      //     BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/hprofile.png"),
      //         ),
      //         label: 'home',
      //         backgroundColor: Colors.blue),
      //   ],
      //   onTap: (index) {
      //     setState(() {
      //       currentIndex = index;
      //     });
      //   },
      // ),
      bottomSheet: Container(
          height: 61,
          color: Colors.white,
          width: double.infinity,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: imageList
                  .map(
                    (value) => GestureDetector(
                      onTap: () {
                        currentIndex = value['id'];
                        setState(() {});
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          currentIndex == value['id']
                              ? Image.asset(
                                  "assets/images/hEllipse.png",
                                  width: 13,
                                  fit: BoxFit.cover,
                                )
                              : const SizedBox(),
                          Image(
                            image: AssetImage(
                              currentIndex == value['id']
                                  ? value['select_image']
                                  : value['image'],
                            ),
                            width: 20,
                            height: 20,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  )
                  .toList())),
    );
  }
}
