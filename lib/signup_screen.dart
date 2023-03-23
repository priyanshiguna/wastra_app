import 'package:flutter/material.dart';

import 'app_common_widget/text_fill_common.dart';
import 'bottom_bar_screen.dart';
import 'common/app_button.dart';
import 'login_screen.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool checkBoxData = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

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
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gordita",
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 30),
                TextFillContainer(
                  controller: nameController,
                  hintText: "name",
                  isRequired: true,
                  image: "assets/images/name.png",
                  text: "Name",
                  isSelect: false,
                ),
                const SizedBox(height: 10),
                TextFillContainer(
                  controller: emailController,
                  hintText: "Email",
                  isRequired: true,
                  image: "assets/images/email.png",
                  text: "Email",
                  isSelect: false,
                ),
                const SizedBox(height: 10),
                TextFillContainer(
                  controller: passwordController,
                  hintText: "Password",
                  isRequired: true,
                  image: "assets/images/lock.png",
                  text: "Password",
                  isSelect: false,
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Transform.scale(
                      scale: 0.7,
                      child: Checkbox(
                        value: checkBoxData,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                        fillColor:
                            MaterialStateProperty.all(const Color(0xFFF67952)),
                        onChanged: (data) {
                          checkBoxData = data!;
                          setState(() {});
                        },
                      ),
                    ),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 36),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'I accept all the',
                            style: TextStyle(
                              fontFamily: "Gordita",
                              color: Color(0x80000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ' Terms and condition ',
                            style: TextStyle(
                              fontFamily: "Gordita",
                              color: Color(0xFF000000),
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomBarScreen(),
                        ),
                      );
                    },
                    child: const AppButton(title: "Sign Up")),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        color: Colors.black45, //color of divider
                        height: 1, //height spacing of divider
                        thickness: 2, //thickness of divider line
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
                const SizedBox(height: 20),
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
                            ),
                          ]),
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
                            )
                          ]),
                      child: Image.asset(
                        "assets/images/google.png",
                        height: 35,
                        width: 35,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
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
                            builder: (context) => const LoginPage(),
                          ),
                        );
                      },
                      child: const Text(
                        " Login",
                        style: TextStyle(
                            fontFamily: "Gordita",
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
