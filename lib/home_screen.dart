import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:wastra_app/filterscreen.dart';
import 'package:wastra_app/search_screen.dart';

import 'app_common_widget/app_home_screen_common.dart';
import 'notification_screen.dart';

class HomePageScreen extends StatefulWidget {
  final AdvancedDrawerController? advancedDrawerController;

  HomePageScreen({Key? key, this.advancedDrawerController}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int checkBoxData = 0;

  List<String> imageList = [
    "assets/images/PyellowDress.png",
    "assets/images/Ppinkshirt.png",
    "assets/images/Pbottom.png",
    "assets/images/PT-shirt.png",
  ];

  List<String> NameList = [
    "Dress",
    "Shirt",
    "Pants",
    "Tshirt",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: _handleMenuButtonPressed,
                    child: Image.asset(
                      "assets/images/PDrawer.png",
                      height: 15,
                      width: 27,
                    ),
                  ),
                  const SizedBox(width: 90),
                  const Icon(Icons.location_on_outlined),
                  const Text("15/2 New Texas",
                      style: TextStyle(
                        fontFamily: "Gordita",
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      )),
                  const SizedBox(width: 78),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NotificationScreen(),
                          ));
                    },
                    child: Image.asset(
                      "assets/images/PNotifications.png",
                      width: 42,
                      height: 38,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Explore",
                    style: TextStyle(
                      fontFamily: "Gordita",
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Best Outfits for you",
                    style: TextStyle(
                      fontFamily: "Gordita",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0x4D1B1B1B),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFFBFBFD),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SearchScreen(),
                            ),
                          );
                        },
                        child: Image.asset(
                          "assets/images/PSearch.png",
                          height: 15,
                          width: 15,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Search items...",
                        style: TextStyle(
                          fontFamily: "Gordita",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              useSafeArea: true,
                              backgroundColor: Colors.transparent,
                              builder: (context) => const FilterScreen());
                        },
                        child: Container(
                          height: 43,
                          width: 47,
                          decoration: const BoxDecoration(
                            color: Color(0xFFF67952),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Image.asset(
                            "assets/images/PFilter.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Container(
                height: 76,
                child: ListView.separated(
                  itemCount: imageList.length,
                  scrollDirection: Axis.horizontal,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 27),
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      checkBoxData = index;
                      setState(() {});
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 71,
                          height: 75,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300),
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                imageList[index],
                                height: 37,
                                width: 27,
                              ),
                              Text(
                                NameList[index],
                                style: TextStyle(
                                  fontFamily: "Gordita",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        checkBoxData == index
                            ? Container(
                                width: 71,
                                height: 75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white,
                                  border: Border.all(color: Colors.transparent),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.asset(
                                      imageList[index],
                                      height: 40,
                                      width: 30,
                                    ),
                                    Text(
                                      NameList[index],
                                      style: TextStyle(
                                        fontFamily: "Gordita",
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                children: const [
                  Text(
                    "Today’s Deal",
                    style: TextStyle(
                      fontFamily: "Gordita",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: "Gordita",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: double.infinity,
                height: 200,
                color: Colors.white,
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    AppCommonContainer(
                      image: "assets/images/Predchexshirt.png",
                    ),
                    SizedBox(width: 10),
                    AppCommonContainer(
                      image: "assets/images/Pwineshirt.png",
                    ),
                    SizedBox(width: 10),
                    AppCommonContainer(
                      image: "assets/images/Predchexshirt.png",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                children: const [
                  Text(
                    "Popular",
                    style: TextStyle(
                      fontFamily: "Gordita",
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "See All",
                    style: TextStyle(
                      fontFamily: "Gordita",
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: const [
                    AppCommonContainer(
                      image: "assets/images/Pskyshirt.png",
                    ),
                    SizedBox(width: 10),
                    AppCommonContainer(
                      image: "assets/images/Pwhitesh.png",
                    ),
                    SizedBox(width: 10),
                    AppCommonContainer(
                      image: "assets/images/Pblackshirt.png",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "New Arrival",
                style: TextStyle(
                  fontFamily: "Gordita",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GridView.builder(
              itemCount: 8,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 0.9,
              ),
              itemBuilder: (BuildContext context, int index) {
                return const AppCommonContainer(
                  image: "assets/images/Pskyshirt.png",
                );
              },
            ),
            SizedBox(height: 65),
          ],
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    widget.advancedDrawerController!.showDrawer();
  }
}
