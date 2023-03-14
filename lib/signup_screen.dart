import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'login_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
              "Sign Up",
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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(
                          0x1AF67952,
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset(
                        "assets/images/name.png",
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Name",
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
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/images/tick.png",
                    height: 15,
                    width: 16,
                  ),
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 36),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'I accept all the',
                            style: TextStyle(
                                fontFamily: "Gorditas-Regular.ttf",
                                color: Colors.black45,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: ' Terms and condition ',
                            style: TextStyle(
                                fontFamily: "Gorditas-Regular.ttf",
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const AppButton(title: "Sign Up"),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: Colors.black45, //color of divider
                    height: 1, //height spacing of divider
                    thickness: 2, //thickness of divider line
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
              height: 15,
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
                          ),
                        ),
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
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
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
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    " Login",
                    style: TextStyle(
                        fontFamily: "Gordita",
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
