import 'package:flutter/material.dart';
import 'package:wastra_app/notification_screen.dart';
import 'package:wastra_app/search_screen.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
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
                  Image.asset(
                    "assets/images/PDrawer.png",
                    height: 15,
                    width: 27,
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
                            builder: (context) => NotificationScreen(),
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
                  color: Color(0xFFFBFBFD),
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
                                builder: (context) => SearchScreen(),
                              ));
                        },
                        child: Image.asset(
                          "assets/images/PSearch.png",
                          height: 15,
                          width: 15,
                        ),
                      ),
                      SizedBox(width: 10),
                      const Text(
                        "Search items...",
                        style: TextStyle(
                          fontFamily: "Gordita",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Container(
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
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 71,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Colors.transparent),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/PyellowDress.png",
                          height: 37,
                          width: 27,
                        ),
                        const Text(
                          "Dress",
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
                  Container(
                    width: 71,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Color(0xD00000D)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/Ppinkshirt.png",
                          height: 40,
                          width: 30,
                        ),
                        const Text(
                          "Shirt",
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
                  Container(
                    width: 71,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Color(0xD00000D)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/Pbottom.png",
                          height: 37,
                          width: 27,
                        ),
                        const Text(
                          "Pants",
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
                  Container(
                    width: 71,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: Color(0xD00000D)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset(
                          "assets/images/PT-shirt.png",
                          height: 37,
                          width: 27,
                        ),
                        const Text(
                          "Tshirt",
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
                ],
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: double.infinity,
                height: 190,
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color(0xFFEFEFF2),
                              spreadRadius: 5,
                              blurRadius: 12.0,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              decoration: const BoxDecoration(
                                color: Color(0xffEFEFF2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: const Image(
                                image: AssetImage(
                                    "assets/images/Predchexshirt.png"),
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: const [
                                Text(
                                  "Long Sleeve\nShirts",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color(0xFFEFEFF2),
                              spreadRadius: 5,
                              blurRadius: 12.0,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              decoration: const BoxDecoration(
                                color: Color(0xffEFEFF2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: const Image(
                                image:
                                    AssetImage("assets/images/Pwineshirt.png"),
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: const [
                                Text(
                                  "Long Sleeve\nShirts",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color(0xFFEFEFF2),
                              spreadRadius: 5,
                              blurRadius: 12.0,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              decoration: const BoxDecoration(
                                color: Color(0xffEFEFF2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: const Image(
                                image: AssetImage(
                                    "assets/images/Predchexshirt.png"),
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: const [
                                Text(
                                  "Long Sleeve\nShirts",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
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
                height: 190,
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color(0xFFEFEFF2),
                              spreadRadius: 5,
                              blurRadius: 12.0,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              decoration: const BoxDecoration(
                                color: Color(0xffEFEFF2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: const Image(
                                image:
                                    AssetImage("assets/images/Pskyshirt.png"),
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: const [
                                Text(
                                  "Long Sleeve\nShirts",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color(0xFFEFEFF2),
                              spreadRadius: 5,
                              blurRadius: 12.0,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              decoration: const BoxDecoration(
                                color: Color(0xffEFEFF2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: const Image(
                                image:
                                    AssetImage("assets/images/Pblackshirt.png"),
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: const [
                                Text(
                                  "Long Sleeve\nShirts",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Color(0xFFEFEFF2),
                              spreadRadius: 5,
                              blurRadius: 12.0,
                              offset: Offset(0, 5))
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              decoration: const BoxDecoration(
                                color: Color(0xffEFEFF2),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                              child: const Image(
                                image: AssetImage("assets/images/Pwhitesh.png"),
                              ),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: const [
                                Text(
                                  "Long Sleeve\nShirts",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gordita",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
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
                childAspectRatio: 0.7,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFFFBFBFD),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Color(0xFFEFEFF2),
                          spreadRadius: 5,
                          blurRadius: 12.0,
                          offset: Offset(0, 5))
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                          height: 143,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Color(0xffEFEFF2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: const Image(
                            image: AssetImage("assets/images/Pskyshirt.png"),
                          ),
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: const [
                            Text(
                              "Long Sleeve\nShirts",
                              style: TextStyle(
                                fontFamily: "Gordita",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "\$165",
                              style: TextStyle(
                                fontFamily: "Gordita",
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
