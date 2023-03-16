import 'package:flutter/material.dart';
import 'package:wastra_app/signup_screen.dart';

import 'app_common_widget/text_fill_common.dart';
import 'common/app_button.dart';
import 'forgot_first_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Center(
                  child: Image.asset(
                    "assets/images/login.png",
                    height: 62,
                    width: 54,
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gordita",
                    color: Colors.black,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFillContainer(
                  controller: emailcontroller,
                  hintText: "Email",
                  isRequired: true,
                  image: "assets/images/email.png",
                  isSelect: false,
                ),
                const SizedBox(height: 20),
                TextFillContainer(
                  controller: passwordcontroller,
                  hintText: "Password",
                  isRequired: true,
                  image: "assets/images/lock.png",
                  isSelect: false,
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotFirstScreen(),
                      ),
                    );
                  },
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot password? ",
                      style: TextStyle(
                          fontFamily: "Gordita",
                          color: Color(0XFF230A06),
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const AppButton(title: "Log in"),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        color: Colors.black45, //color of divider
                        height: 1, //height spacing of divider
                        thickness: 2, //thickness of divier line
                        indent: 65, //spacing at the start of divider
                        endIndent: 35, //spacing at the end of divider
                      ),
                    ),
                    Text(
                      "Or",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0XFF230A06),
                        fontFamily: "Gordita",
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black45, //color of divider
                        height: 1, //height spacing of divider
                        thickness: 2, //thickness of divier line
                        indent: 35, //spacing at the start of divider
                        endIndent: 65, //spacing at the end of divider
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 71,
                      width: 71,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 12,
                            spreadRadius: 1,
                            offset: Offset(0, 5),
                          )
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/facebook.png",
                        height: 35,
                        width: 35,
                      ),
                    ),
                    Container(
                      height: 71,
                      width: 71,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 12,
                            spreadRadius: 1,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      child: Image.asset(
                        "assets/images/google.png",
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(
                          fontFamily: "Gordita",
                          fontSize: 16,
                          color: Color(0x59000000),
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignupPage(),
                          ),
                        );
                      },
                      child: const Text(
                        " Sign Up",
                        style: TextStyle(
                            fontFamily: "Gordita",
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
