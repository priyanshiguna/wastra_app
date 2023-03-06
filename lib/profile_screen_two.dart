import 'package:flutter/material.dart';

class ProfileScreenTwo extends StatefulWidget {
  const ProfileScreenTwo({Key? key}) : super(key: key);

  @override
  State<ProfileScreenTwo> createState() => _ProfileScreenTwoState();
}

class _ProfileScreenTwoState extends State<ProfileScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 10, left: 10),
                child: Icon(Icons.arrow_back_ios),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 120),
                child: Text(
                  "Address",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 6),
                          color: Colors.grey,
                        ),
                      ],
                      color: Colors.white),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF67952),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset(
                              "assets/images/location.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 30, right: 15),
                            child: Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text(
                                "Home",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "304, City Center, Yogichowk,Surat.",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Image(
                        image: AssetImage("assets/images/Sedit.png"),
                        width: 28,
                        height: 28,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 10,
                          offset: Offset(0, 6),
                          color: Colors.grey,
                        ),
                      ],
                      color: Colors.white),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          height: 65,
                          width: 65,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF67952),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Image.asset(
                              "assets/images/location.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 30, right: 15),
                            child: Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text(
                                "Office",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "304, City Center, Yogichowk,Surat.",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Image(
                        image: AssetImage("assets/images/Sedit.png"),
                        width: 28,
                        height: 28,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 450),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                      height: 60,
                      width: 260,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          // boxShadow: const [
                          //   BoxShadow(
                          //     spreadRadius: 0,
                          //     blurRadius: 12,
                          //     offset: Offset(0, 5),
                          //     color: Colors.grey,
                          //   ),
                          // ],
                          color: Color(0xFFF67952)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Add New Address",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
