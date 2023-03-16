import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'common_widget/appbar_container.dart';

class ProfileAddNewCardScreen extends StatefulWidget {
  const ProfileAddNewCardScreen({Key? key}) : super(key: key);

  @override
  State<ProfileAddNewCardScreen> createState() =>
      _ProfileAddNewCardScreenState();
}

class _ProfileAddNewCardScreenState extends State<ProfileAddNewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Padding(
        padding: const EdgeInsets.only(left: 80, bottom: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const AppButton(
            title: "Add",
          ),
        ),
      ),
      body: Column(
        children: [
          const AppbarContainer(text: 'Add a new card'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                const Image(
                  image: AssetImage("assets/images/Screditcard.png"),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Card Name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: "Gordita",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 57,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFBFBFD),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 3),
                        color: Color(0x40000000),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Text(
                      "Anderw Ainsley",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0x80000000),
                        fontFamily: "Gordita",
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Card Number",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: "Gordita",
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  height: 57,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFBFBFD),
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 3),
                        color: Color(0x40000000),
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Text(
                      "2672 4738 7837 7825",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0x80000000),
                        fontFamily: "Gordita",
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Expiry Date",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: "Gordita",
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 57,
                          width: 158,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFBFBFD),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0,
                                blurRadius: 12,
                                offset: Offset(0, 3),
                                color: Color(0x40000000),
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Text(
                              "09/26",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0x80000000),
                                fontFamily: "Gordita",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "CVV",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            fontFamily: "Gordian",
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          height: 57,
                          width: 158,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFBFBFD),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 0,
                                blurRadius: 12,
                                offset: Offset(0, 3),
                                color: Color(0x40000000),
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 20),
                            child: Text(
                              "699",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0x80000000),
                                fontFamily: "Gordita",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
