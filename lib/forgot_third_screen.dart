import 'package:flutter/material.dart';

import 'app_common_widget/text_fill_common.dart';
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
                        fontFamily: "Gordita",
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextFillContainer(
                    isRequired: true,
                    image: "assets/images/lock.png",
                    text: "Password",
                    isSelect: true,
                  ),
                  const SizedBox(height: 20),
                  const TextFillContainer(
                    isRequired: true,
                    image: "assets/images/lock.png",
                    text: "Create Password",
                    isSelect: true,
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
