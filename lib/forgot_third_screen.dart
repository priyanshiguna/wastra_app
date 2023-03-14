import 'package:flutter/material.dart';

import 'bottom_bar_screen.dart';
import 'common/app_button.dart';
import 'common_widget/appbar_container.dart';

class ForgotThirdScreen extends StatefulWidget {
  const ForgotThirdScreen({Key? key}) : super(key: key);

  @override
  State<ForgotThirdScreen> createState() => _ForgotThirdScreenState();
}

class _ForgotThirdScreenState extends State<ForgotThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 80, bottom: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BottomBarScreen(),
              ),
            );
          },
          child: const AppButton(
            title: "Continue",
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const AppbarContainer(
              text: "Create New Password",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "assets/images/forgotthird.png",
                    height: 219,
                    width: 288,
                  ),
                  const SizedBox(height: 40),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Create Your New Password",
                      style: TextStyle(
                          fontFamily: "Gordita-Medium.ttf",
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 57,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFBFBFD),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 12,
                              spreadRadius: 1,
                              offset: Offset(0, 5))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0x1AF67952)),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset(
                                "assets/images/lock.png",
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Password",
                            style: TextStyle(
                                fontFamily: "Gordita",
                                color: Color(0x59000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          const Image(
                              image: AssetImage("assets/images/showpass.png")),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 57,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFBFBFD),
                        boxShadow: const [
                          BoxShadow(
                              color: Color(0x40000000),
                              blurRadius: 12,
                              spreadRadius: 1,
                              offset: Offset(0, 5))
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Container(
                            height: 45,
                            width: 48,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(
                                  0x1AF67952,
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Image.asset("assets/images/lock.png"),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Create Password",
                            style: TextStyle(
                                fontFamily: "Gordita",
                                color: Color(0x59000000),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          const Image(
                              image: AssetImage("assets/images/showpass.png")),
                        ],
                      ),
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
