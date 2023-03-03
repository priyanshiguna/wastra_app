import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
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
                children: const [
                  Text(
                    "1/3",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Skip",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
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
              SizedBox(
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
                      color: Colors.deepOrange),
                  child: const Center(
                    child: Text(
                      "Next >",
                      style: TextStyle(
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
