import 'package:flutter/material.dart';

import 'home_screen.dart';

class PaymentDoneScreen extends StatefulWidget {
  const PaymentDoneScreen({Key? key}) : super(key: key);

  @override
  State<PaymentDoneScreen> createState() => _PaymentDoneScreenState();
}

class _PaymentDoneScreenState extends State<PaymentDoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 120),
          child: Column(
            children: [
              Center(
                child: Container(
                  height: 209,
                  width: 209,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF67952),
                  ),
                  child: Container(
                    height: 180,
                    width: 180,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFBFBFD),
                    ),
                    child: const Image(
                      image: AssetImage("assets/images/hcheck.png"),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 60),
              const Text(
                "Congratulation!!!",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "        Payment is the transfer of money\nservices in exchange product or Payments ",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),
              Container(
                height: 55,
                width: 256,
                decoration: BoxDecoration(
                  color: Color(0xffF67952),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                ),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Get your receipt",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePageScreen(),
                    ),
                  );
                },
                child: Container(
                  height: 55,
                  width: 256,
                  decoration: const BoxDecoration(
                    color: Color(0xffFFE9E2),
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                  child: const Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Back to Home",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffF67952),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
