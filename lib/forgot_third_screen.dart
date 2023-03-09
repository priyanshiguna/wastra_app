import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'common_widget/appbar_container.dart';

class Forgot_Third_Screen extends StatefulWidget {
  const Forgot_Third_Screen({Key? key}) : super(key: key);

  @override
  State<Forgot_Third_Screen> createState() => forgot_third_screen();
}

class forgot_third_screen extends State<Forgot_Third_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppbarContainer(
              text: "Create New Password",
            ),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/images/forgotthird.png",
                  height: 235,
                  width: 235,
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  children: const [
                    SizedBox(
                      width: 28,
                    ),
                    Text(
                      "Create Your New Password",
                      style: TextStyle(
                          fontFamily: "Gordita-Medium.ttf",
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 57,
                  width: 335,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFFBFBFD),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 12,
                            spreadRadius: 1,
                            offset: Offset(
                              0,
                              5,
                            ))
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        height: 45,
                        width: 48,
                        //color: Color(0xFFF67952),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(
                              0x1AF67952,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset(
                            "assets/images/lock.png",
                            height: 24,
                            width: 24,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Password",
                        style: TextStyle(
                            fontFamily: "Gorditas-Regular.ttf",
                            color: Colors.black45,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 57,
                  width: 335,
                  //color: Colors.yellow,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFFBFBFD),
                      boxShadow: const [
                        BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 12,
                            spreadRadius: 1,
                            offset: Offset(
                              0,
                              5,
                            ))
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        height: 45,
                        width: 48,
                        //color: Color(0xFFF67952),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color(
                              0x1AF67952,
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.asset("assets/images/lock.png"),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Create Password",
                        style: TextStyle(
                            fontFamily: "Gorditas-Regular.ttf",
                            color: Colors.black45,
                            fontSize: 17,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                const AppButton(
                  title: "Continue",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
