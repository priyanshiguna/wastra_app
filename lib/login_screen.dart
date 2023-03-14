import 'package:flutter/material.dart';
import 'package:wastra_app/signup_screen.dart';

import 'common/app_button.dart';
import 'forgot_first_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
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
              "Log in",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 30,
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
                        color: Colors.black45,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const SizedBox(
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
                    "Password",
                    style: TextStyle(
                        fontFamily: "Gorditas-Regular.ttf",
                        color: Colors.black45,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotFirstScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Forgot password? ",
                    style: TextStyle(
                        fontFamily: "Gorditas-Regular.ttf",
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const AppButton(title: "Log in"),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: Colors.black45, //color of divider
                    height: 1, //height spacing of divider
                    thickness: 2, //thickness of divier line
                    indent: 35, //spacing at the start of divider
                    endIndent: 35, //spacing at the end of divider
                  ),
                ),
                Text(
                  "Or",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black45,
                    fontFamily: "Gorditas-Regular.ttf",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black45, //color of divider
                    height: 1, //height spacing of divider
                    thickness: 2, //thickness of divier line
                    indent: 35, //spacing at the start of divider
                    endIndent: 35, //spacing at the end of divider
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 70,
                  width: 70,
                ),
                Container(
                  height: 71,
                  width: 71,
                  //color: Colors.lightBlueAccent,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 12,
                            spreadRadius: 1,
                            offset: Offset(
                              0,
                              5,
                            ))
                      ]),
                  child: Image.asset(
                    "assets/images/facebook.png",
                    height: 40,
                    width: 40,
                  ),
                ),
                Container(
                  height: 71,
                  width: 71,
                  //color: Colors.lightBlueAccent,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color(0x40000000),
                            blurRadius: 12,
                            spreadRadius: 1,
                            offset: Offset(
                              0,
                              5,
                            ))
                      ]),
                  child: Image.asset(
                    "assets/images/google.png",
                    height: 40,
                    width: 40,
                  ),
                ),
                const SizedBox(
                  height: 70,
                  width: 70,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                  style: TextStyle(
                      fontFamily: "Gordita",
                      fontSize: 15,
                      color: Color(0xFF230A06),
                      fontWeight: FontWeight.w300),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    " Sign Up",
                    style: TextStyle(
                        fontFamily: "Gordita",
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
