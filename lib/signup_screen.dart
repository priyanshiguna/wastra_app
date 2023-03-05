import 'package:flutter/material.dart';

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
              style: TextStyle(
                  fontFamily: "Gorditas-Bold.ttf",
                  fontSize: 26,
                  fontWeight: FontWeight.w600),
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
                      color: Colors.black45,
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: Offset(
                        2,
                        2,
                      ))
                ],
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 45,
                    width: 48,
                    child: Image.asset("assets/images/name.png"),
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
                      color: Colors.black45,
                      blurRadius: 1,
                      spreadRadius: 1,
                      offset: Offset(
                        2,
                        2,
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
                    child: Image.asset("assets/images/email.png"),
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
                        color: Colors.black45,
                        blurRadius: 1,
                        spreadRadius: 1,
                        offset: Offset(
                          2,
                          2,
                        ))
                  ]),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    height: 45,
                    width: 48,
                    //color: Color(0xFFF67952),
                    child: Image.asset("assets/images/lock.png"),
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
                  // Container(
                  //   height: 16,
                  //   width: 16,
                  //   child: Icon(
                  //     Icons.check,
                  //     color: Colors.white,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(2),
                  //     color: Colors.deepOrange,
                  //   ),
                  // ),
                  const Text(
                    " I accept all the Terms & condition",
                    style: TextStyle(
                        fontFamily: "Gorditas-Regular.ttf",
                        color: Colors.black54,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
                height: 55,
                width: 256,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.deepOrange),
                child: const Center(
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                        fontFamily: "Gorditas-bold.ttf",
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
