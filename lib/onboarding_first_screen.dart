import 'package:flutter/material.dart';

class OnboardingFirstScreen extends StatefulWidget {
  const OnboardingFirstScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingFirstScreen> createState() => _OnboardingFirstScreenState();
}

class _OnboardingFirstScreenState extends State<OnboardingFirstScreen> {
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
                            text: '1',
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
                  const Text(
                    "Skip",
                    style: TextStyle(
                        fontFamily: "Gorditas-Regular.ttf",
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                "assets/images/2.png",
                height: 325,
                width: 323,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Choose Product",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "A product is the item offerd for sale. A product cab be a service for an item. It can be physical or in virtual or cyber form",
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
              Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFFF67952)),
                  child: const Center(
                    child: Text(
                      "Next >",
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
