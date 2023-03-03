import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Row(
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
                      fontFamily: "Gorditas",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    )),
                const SizedBox(width: 78),
                Image.asset(
                  "assets/images/PNotifications.png",
                  width: 42,
                  height: 38,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text("Explore",
                style: TextStyle(
                  fontFamily: "Gorditas",
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                )),
            const SizedBox(height: 20),
            const Text(
              "Best Outfits for you",
              style: TextStyle(
                fontFamily: "Gorditas",
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0x4D1B1B1B),
              ),
            ),
            const SizedBox(height: 20),
            Container(
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
                    Image.asset(
                      "assets/images/PSearch.png",
                      height: 15,
                      width: 15,
                    ),
                    SizedBox(width: 10),
                    const Text(
                      "Search items...",
                      style: TextStyle(
                        fontFamily: "Gorditas",
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
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          fontFamily: "Gorditas",
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
                          fontFamily: "Gorditas",
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
                          fontFamily: "Gorditas",
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
                          fontFamily: "Gorditas",
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
          ],
        ),
      ),
    );
  }
}
