import 'package:flutter/material.dart';

class ProfileScreenOne extends StatefulWidget {
  const ProfileScreenOne({Key? key}) : super(key: key);

  @override
  State<ProfileScreenOne> createState() => _ProfileScreenOneState();
}

class _ProfileScreenOneState extends State<ProfileScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
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
                  "Edit Profile",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Container(
                    height: 55,
                    width: 350,
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
                    child: const Padding(
                      padding: EdgeInsets.only(left: 7, top: 15),
                      child: Text(
                        "Jacks",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                    )),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 0,
                                  blurRadius: 12,
                                  offset: Offset(0, 6),
                                  color: Colors.grey,
                                ),
                              ],
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 7, top: 15),
                            child: Text(
                              "12/10/1995",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 0,
                                  blurRadius: 12,
                                  offset: Offset(0, 6),
                                  color: Colors.grey,
                                ),
                              ],
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 7, top: 15),
                            child: Text(
                              "ndhghjjh@gmail.com",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: 350,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  spreadRadius: 0,
                                  blurRadius: 12,
                                  offset: Offset(0, 6),
                                  color: Colors.grey,
                                ),
                              ],
                              color: Colors.white),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 7, top: 15),
                            child: Text(
                              "India",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w400),
                            ),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 12,
                              offset: Offset(0, 6),
                              color: Colors.grey,
                            ),
                          ],
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              "assets/images/india.png",
                              height: 18,
                              width: 27,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(Icons.keyboard_arrow_down),
                            ),
                            const Text(
                              "+91",
                              style: TextStyle(fontSize: 18),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text(
                                "9876543210",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                      height: 50,
                      width: 350,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 12,
                              offset: Offset(0, 6),
                              color: Colors.grey,
                            ),
                          ],
                          color: Colors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Male",
                              style: TextStyle(fontSize: 18),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(Icons.keyboard_arrow_down),
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200),
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
                          boxShadow: const [
                            BoxShadow(
                              spreadRadius: 0,
                              blurRadius: 12,
                              offset: Offset(0, 6),
                              color: Colors.grey,
                            ),
                          ],
                          color: Color(0xFFF67952)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Add",
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
    ));
  }
}
