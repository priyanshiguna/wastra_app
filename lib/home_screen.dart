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
      body: ListView(
        shrinkWrap: true,
        //scrollDirection: Axis.vertical,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Padding(
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
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      "Today’s Deal",
                      style: TextStyle(
                        fontFamily: "Gorditas",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontFamily: "Gorditas",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: 355,
                  height: 190,
                  child: ListView(
                    physics: AlwaysScrollableScrollPhysics(),
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
                                      fontFamily: "Gorditas",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$165",
                                    style: TextStyle(
                                      fontFamily: "Gorditas",
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
                      Container(
                        width: 154,
                        height: 190,
                        decoration: const BoxDecoration(
                          color: Color(0xffFBFBFD),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
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
                                      "assets/images/Pwineshirt.png"),
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: const [
                                  Text(
                                    "Long Sleeve\nShirts",
                                    style: TextStyle(
                                      fontFamily: "Gorditas",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$165",
                                    style: TextStyle(
                                      fontFamily: "Gorditas",
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
                      Container(
                        width: 154,
                        height: 190,
                        decoration: const BoxDecoration(
                          color: Color(0xffFBFBFD),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
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
                                      fontFamily: "Gorditas",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$165",
                                    style: TextStyle(
                                      fontFamily: "Gorditas",
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
                const SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      "Popular",
                      style: TextStyle(
                        fontFamily: "Gorditas",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "See All",
                      style: TextStyle(
                        fontFamily: "Gorditas",
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: 355,
                  height: 190,
                  child: ListView(
                    physics: AlwaysScrollableScrollPhysics(),
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
                                      fontFamily: "Gorditas",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$165",
                                    style: TextStyle(
                                      fontFamily: "Gorditas",
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
                      Container(
                        width: 154,
                        height: 190,
                        decoration: const BoxDecoration(
                          color: Color(0xffFBFBFD),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
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
                                      "assets/images/Pblackshirt.png"),
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: const [
                                  Text(
                                    "Long Sleeve\nShirts",
                                    style: TextStyle(
                                      fontFamily: "Gorditas",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$165",
                                    style: TextStyle(
                                      fontFamily: "Gorditas",
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
                      Container(
                        width: 154,
                        height: 190,
                        decoration: const BoxDecoration(
                          color: Color(0xffFBFBFD),
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
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
                                      AssetImage("assets/images/Pwhitesh.png"),
                                ),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: const [
                                  Text(
                                    "Long Sleeve\nShirts",
                                    style: TextStyle(
                                      fontFamily: "Gorditas",
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    "\$165",
                                    style: TextStyle(
                                      fontFamily: "Gorditas",
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
                Text(
                  "New Arrival",
                  style: TextStyle(
                    fontFamily: "Gorditas",
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                GridView(
                  padding: const EdgeInsets.all(20),
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10, crossAxisCount: 2,
                    // childAspectRatio: 5,
                  ),
                  children: [
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
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
                                    fontFamily: "Gorditas",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gorditas",
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
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
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
                                    fontFamily: "Gorditas",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gorditas",
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
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
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
                                    fontFamily: "Gorditas",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gorditas",
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
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
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
                                    fontFamily: "Gorditas",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gorditas",
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
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
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
                                    fontFamily: "Gorditas",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gorditas",
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
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
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
                                    fontFamily: "Gorditas",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gorditas",
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
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
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
                                    fontFamily: "Gorditas",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gorditas",
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
                    Container(
                      width: 154,
                      height: 190,
                      decoration: const BoxDecoration(
                        color: Color(0xffFBFBFD),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
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
                                    fontFamily: "Gorditas",
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "\$165",
                                  style: TextStyle(
                                    fontFamily: "Gorditas",
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
