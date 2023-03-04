import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Search",
        ),
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: "Gorditas",
        ),
        centerTitle: true,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 21,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 55,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/PSearch.png",
                      height: 15,
                      width: 15,
                    ),
                    const SizedBox(width: 5),
                    const Text(
                      "Shirt",
                      style: TextStyle(
                        fontFamily: "Gorditas",
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
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
            const Divider(
              thickness: 1,
              color: Color(0x0d1c1a19),
              height: 1,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Search results showing for “Shirt”",
                  style: TextStyle(
                    fontFamily: "Gorditas",
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10, crossAxisCount: 2,
                  // childAspectRatio: 5,
                ),
                children: [
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              padding: const EdgeInsets.only(top: 5),
                              decoration: const BoxDecoration(
                                color: Color(0xFFFFFCFA),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Image.asset(
                                "assets/images/Pwhiteshirt.png",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8, top: 5),
                              child: Container(
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFFCFA),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assets/images/Plike.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Long Sleeve Shirts",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          "\$165",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    // color: Colors.lightGreen,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              // padding: EdgeInsets.only(top: 5),
                              decoration: const BoxDecoration(
                                color: Color(0xFFEFEFF2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Image.asset(
                                "assets/images/Pblueshirt.png",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8, top: 5),
                              child: Container(
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFFCFA),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assets/images/Plikes.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Casual Henley Shirts",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          "\$175",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    // color: Colors.lightGreen,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              // padding: EdgeInsets.only(top: 5),
                              decoration: const BoxDecoration(
                                color: Color(0xFFEDFDF4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Image.asset(
                                "assets/images/Pwhiteandgreen.png",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8, top: 5),
                              child: Container(
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFFCFA),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assets/images/Plikes.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Curved Hem Shirts",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          "\$100",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    // color: Colors.lightGreen,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              padding: const EdgeInsets.only(top: 5),
                              decoration: const BoxDecoration(
                                color: Color(0xFFEFEFF2),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Image.asset(
                                "assets/images/Pgreen.png",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8, top: 5),
                              child: Container(
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFFCFA),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assets/images/Plike.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Casual Nolin",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          "\$100",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    // color: Colors.lightGreen,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              padding: const EdgeInsets.only(top: 5),
                              decoration: const BoxDecoration(
                                color: Color(0xFFF4F0C3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Image.asset(
                                "assets/images/Prainbowshirt.png",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8, top: 5),
                              child: Container(
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFFCFA),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assets/images/Plike.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Curved Hem Shirts",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          "\$100",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 190,
                    width: double.infinity,
                    // color: Colors.lightGreen,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Container(
                              height: 133,
                              width: 142,
                              // padding: EdgeInsets.only(top: 5),
                              decoration: const BoxDecoration(
                                color: Color(0xFFEDFDF4),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              child: Image.asset(
                                "assets/images/mixshirt.png",
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 8, top: 5),
                              child: Container(
                                height: 25,
                                width: 25,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFFFFCFA),
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  "assets/images/Plikes.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Casual Nolin",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          "\$100",
                          style: TextStyle(
                            fontFamily: "Gorditas",
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
