import 'package:flutter/material.dart';

import 'app_common_widget/text_fill_common.dart';
import 'common/app_button.dart';
import 'common_widget/appbar_container.dart';
import 'dialog_box_screen.dart';

class ForgotThirdScreen extends StatefulWidget {
  const ForgotThirdScreen({Key? key}) : super(key: key);

  @override
  State<ForgotThirdScreen> createState() => _ForgotThirdScreenState();
}

class _ForgotThirdScreenState extends State<ForgotThirdScreen> {
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController creatpasswordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DialoagBoxScreen(),
              ),
            );
          },
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              const AppButton(
                title: "Continue",
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
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
                    TextFillContainer(
                      isRequired: true,
                      controller: passwordcontroller,
                      hintText: "Password",
                      image: "assets/images/lock.png",
                      isSelect: true,
                    ),
                    const SizedBox(height: 20),
                    TextFillContainer(
                      isRequired: true,
                      controller: creatpasswordcontroller,
                      hintText: "Create Password",
                      image: "assets/images/lock.png",
                      isSelect: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
