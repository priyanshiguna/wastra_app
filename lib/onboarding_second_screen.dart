import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'onboarding_third_screen.dart';

class OnboardingSecondScreen extends StatefulWidget {
  const OnboardingSecondScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingSecondScreen> createState() => _OnboardingSecondScreenState();
}

class _OnboardingSecondScreenState extends State<OnboardingSecondScreen> {
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
                            text: '2',
                            style: TextStyle(
                                fontFamily: "Gorditas-Regular.ttf",
                                fontSize: 20,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: '/3 ',
                            style: TextStyle(
                                fontFamily: "Gorditas-Regular.ttf",
                                color: Colors.black26,
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
                "assets/images/3.png",
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
                "Payment is in transfer of money services in exchange product or Payment typicallyt made terms agreed",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Gorditas-Regular.ttf",
                    fontSize: 18,
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
                      builder: (context) => const OnboardingThirdScreen(),
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
                        "Next >>",
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
