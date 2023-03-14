import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'login_screen.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool checkBoxData = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                        color: const Color(0x1AF67952),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/name.png",
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Name",
                      style: TextStyle(
                          fontFamily: "Gordita",
                          color: Color(0x59000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
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
                        color: const Color(0x1AF67952),
                      ),
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
                    )
                  ],
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
                    ]),
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    Container(
                      height: 45,
                      width: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0x1AF67952)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset("assets/images/lock.png"),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Password",
                      style: TextStyle(
                          fontFamily: "Gordita",
                          color: Color(0x59000000),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Transform.scale(
                    scale: 0.7,
                    child: Checkbox(
                      value: checkBoxData,
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
              const SizedBox(height: 20),
              const AppButton(title: "Sign Up"),
              const SizedBox(height: 20),
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
              const SizedBox(height: 15),
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
    );
  }
}
