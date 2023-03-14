import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'common_widget/appbar_container.dart';
import 'forgot_second_screen.dart';

class ForgotFirstScreen extends StatefulWidget {
  const ForgotFirstScreen({Key? key}) : super(key: key);

  @override
  State<ForgotFirstScreen> createState() => _ForgotFirstScreenState();
}

class _ForgotFirstScreenState extends State<ForgotFirstScreen> {
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
                builder: (context) => const ForgotSecondScreen(),
              ),
            );
          },
          child: const AppButton(
            title: "Verify",
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const AppbarContainer(
              text: "Forgot Password",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Column(
                    children: [
                      const SizedBox(height: 20),
                      Image.asset(
                        "assets/images/forgot.png",
                        height: 225,
                        width: 248,
                      ),
                      const SizedBox(height: 50),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Enter Your Email",
                          style: TextStyle(
                            fontFamily: "Gordita",
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
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
                              offset: Offset(0, 5),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
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
                                child: Image.asset("assets/images/email.png"),
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              "Email",
                              style: TextStyle(
                                  fontFamily: "Gordita",
                                  color: Color(0x59000000),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
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
