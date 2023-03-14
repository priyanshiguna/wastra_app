import 'package:flutter/material.dart';
import 'package:wastra_app/common_widget/appbar_container.dart';
import 'package:wastra_app/profile_new_card_screen.dart';

import 'common/app_button.dart';

class ProfileScreenThree extends StatefulWidget {
  const ProfileScreenThree({Key? key}) : super(key: key);

  @override
  State<ProfileScreenThree> createState() => _ProfileScreenThreeState();
}

class _ProfileScreenThreeState extends State<ProfileScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 80, bottom: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddNewCardScreen(),
              ),
            );
          },
          child: const AppButton(
            title: "Add New Card",
          ),
        ),
      ),
      body: Column(
        children: [
          const AppbarContainer(text: 'Payment'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Container(
                  height: 92,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 12,
                          offset: Offset(0, 3),
                          color: Color(0x40000000),
                        ),
                      ],
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/Paypal.png",
                          height: 28.32,
                          width: 34,
                        ),
                        SizedBox(width: 10),
                        const Text(
                          "PayPal",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: "Gordita",
                          ),
                        ),
                        Spacer(),
                        const Text(
                          "Connected",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gordita",
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 92,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 12,
                          offset: Offset(0, 3),
                          color: Color(0x40000000),
                        ),
                      ],
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/googlepay.png",
                          height: 31,
                          width: 31,
                        ),
                        SizedBox(width: 10),
                        const Text(
                          "Google Pay",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: "Gordita",
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Connected",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: "Gordita",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 92,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                          spreadRadius: 0,
                          blurRadius: 12,
                          offset: Offset(0, 3),
                          color: Color(0x40000000),
                        ),
                      ],
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/mastercard.png",
                          height: 23,
                          width: 36,
                        ),
                        SizedBox(width: 10),
                        const Text(
                          ".... ........ 4679",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: "Gordita",
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          "Connected",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: "Gordita",
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
