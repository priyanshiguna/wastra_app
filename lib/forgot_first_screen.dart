import 'package:flutter/material.dart';

class ForgotFirstScreen extends StatefulWidget {
  const ForgotFirstScreen({Key? key}) : super(key: key);

  @override
  State<ForgotFirstScreen> createState() => _ForgotFirstScreenState();
}

class _ForgotFirstScreenState extends State<ForgotFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(Icons.arrow_back_ios),
                  SizedBox(
                    width: 80,
                  ),
                  Text(
                    "Forgot Password",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gorditas-Regular.ttf",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/forgot.png",
                height: 235,
                width: 235,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    "Enter Your Email",
                    style: TextStyle(
                        fontFamily: "Gordita-Medium.ttf",
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Container(
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
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 170,
              ),
              Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xFFF67952)),
                  child: const Center(
                    child: Text(
                      "Verify",
                      style: TextStyle(
                          fontFamily: "Gorditas-Regular.ttf",
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
