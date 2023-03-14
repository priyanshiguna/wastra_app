import 'package:flutter/material.dart';

import 'login_screen.dart';

class OnboardingThirdScreen extends StatefulWidget {
  const OnboardingThirdScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingThirdScreen> createState() => _OnboardingThirdScreenState();
}

class _OnboardingThirdScreenState extends State<OnboardingThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 36),
                      children: <TextSpan>[
                        TextSpan(
                            text: '3/3',
                            style: TextStyle(
                                fontFamily: "Gorditas-Regular.ttf",
                                fontSize: 20,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
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
                      "Skip",
                      style: TextStyle(
                          fontFamily: "Gorditas-Regular.ttf",
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/images/4.png",
                height: 325,
                width: 323,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Choose Product",
                style: TextStyle(
                    fontFamily: "Gorditas-Regular.ttf",
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Business or commerce an order is a started intension either spoken to engage in a commercial transaction specific products",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Gorditas-Regular.ttf",
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54),
              ),
              const SizedBox(
                height: 25,
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
                child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xFFF67952)),
                    child: const Center(
                      child: Text(
                        "Get Started >>>",
                        style: TextStyle(
                            fontFamily: "Gorditas-Regular.ttf",
                            color: Colors.white,
                            fontSize: 23,
                            fontWeight: FontWeight.w400),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
