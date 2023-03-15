import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'login_screen.dart';

class OnBoardingThird extends StatefulWidget {
  const OnBoardingThird({Key? key}) : super(key: key);

  @override
  State<OnBoardingThird> createState() => _OnBoardingThirdState();
}

class _OnBoardingThirdState extends State<OnBoardingThird> {
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
                  const Text(
                    "3/3",
                    style: TextStyle(
                        fontFamily: "Gordita",
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
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
                "assets/images/4.png",
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
                "Business or commerce an order is a started\nintention either spoken to engage in a\ncommercial transaction specific products",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "Gordita",
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0x80000000)),
              ),
              const SizedBox(
                height: 30,
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
                child: const AppButton(
                  title: "Get Started >>>",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
