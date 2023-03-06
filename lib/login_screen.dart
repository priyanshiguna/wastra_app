import 'package:flutter/material.dart';

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
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(
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
              children: const [
                Text(
                  "Forgot password? ",
                  style: TextStyle(
                      fontFamily: "Gorditas-Regular.ttf",
                      color: Colors.black54,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ],
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
                    "Log in",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                )),
            Row(
              children: [
                const Divider(
                  color: Colors.black,
                ),
              ],
            ),
            Container(
              width: 100,
              color: Colors.black,
            ),
            Divider()
          ],
        ),
      ),
    );
  }
}
