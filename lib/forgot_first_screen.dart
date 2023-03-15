import 'package:flutter/material.dart';

import 'app_common_widget/text_fill_common.dart';
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
                      const TextFillContainer(
                        isRequired: true,
                        image: "assets/images/email.png",
                        text: "Email",
                        isSelect: false,
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
