import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'common_widget/appbar_container.dart';

class ForgotFirstScreen extends StatefulWidget {
  const ForgotFirstScreen({Key? key}) : super(key: key);

  @override
  State<ForgotFirstScreen> createState() => _ForgotFirstScreenState();
}

class _ForgotFirstScreenState extends State<ForgotFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppbarContainer(
              text: "Forgot Password",
            ),
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Image.asset(
                  "assets/images/forgot.png",
                  height: 235,
                  width: 235,
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Text(
                  "Enter Your Email",
                  style: TextStyle(
                      fontFamily: "Gordita-Medium.ttf",
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 57,
                  width: 335,
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
                    ],
                  ),
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
                          child: Image.asset("assets/images/email.png"),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "Email",
                        style: TextStyle(
                            fontFamily: "Gorditas-Regular.ttf",
                            color: Color(0xFF230A06),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 160,
                ),
                const AppButton(
                  title: "Next",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
