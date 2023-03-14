import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'login_screen.dart';
import 'onboarding_third_screen.dart';

class OnBoardingSecond extends StatefulWidget {
  const OnBoardingSecond({Key? key}) : super(key: key);

  @override
  State<OnBoardingSecond> createState() => _OnBoardingSecondState();
}

class _OnBoardingSecondState extends State<OnBoardingSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: '2',
                          style: TextStyle(
                            fontFamily: "Gordita",
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                            text: '/3 ',
                            style: TextStyle(
                                fontFamily: "Gordita",
                                color: Color(0x80000000),
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
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
                      "Skip",
                      style: TextStyle(
                        fontFamily: "Gordita",
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
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
                height: 40,
              ),
              const Text(
                "Choose Product",
                style: TextStyle(
                  fontFamily: "Gordita",
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Payment is in transfer of money\nservices in exchange product or Payments\ntypically made terms agreed",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "Gordita",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0x80000000),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingThird(),
                    ),
                  );
                },
                child: const AppButton(
                  title: "Next >>",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
