import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Favorite",
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
      ),
      body: GridView(
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
                        borderRadius: BorderRadius.all(Radius.circular(15)),
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
                        borderRadius: BorderRadius.all(Radius.circular(15)),
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
                          "assets/images/Plike.png",
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
                        borderRadius: BorderRadius.all(Radius.circular(15)),
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
                        borderRadius: BorderRadius.all(Radius.circular(15)),
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
                        borderRadius: BorderRadius.all(Radius.circular(15)),
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
                        borderRadius: BorderRadius.all(Radius.circular(15)),
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
    );
  }
}
