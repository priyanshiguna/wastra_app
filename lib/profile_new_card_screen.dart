import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'common/app_button.dart';
import 'common_widget/appbar_container.dart';

class ProfileAddNewCardScreen extends StatefulWidget {
  const ProfileAddNewCardScreen({Key? key}) : super(key: key);

  @override
  State<ProfileAddNewCardScreen> createState() =>
      _ProfileAddNewCardScreenState();
}

class _ProfileAddNewCardScreenState extends State<ProfileAddNewCardScreen> {
  TextEditingController cardnamecontroller = TextEditingController();
  TextEditingController cardnumbercontroller = TextEditingController();
  TextEditingController expirydatecontroller = TextEditingController();
  TextEditingController cvvcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: const [
              AppButton(
                title: "Add",
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppbarContainer(text: 'Add a new card'),
            // const SizedBox(height: 10),
            Image.asset(
              "assets/images/Screditcard.png",
              // height: 189,
              // width: 329,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Form(
                child: Column(
                  children: [
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFBFBFD),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1C000000),
                            blurRadius: 12,
                            spreadRadius: 0,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: TextFormField(
                          cursorHeight: 30,
                          controller: cardnamecontroller,
                          style: TextStyle(
                              color: Color(0x59000000),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: "Gordita"),
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFBFBFD),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1C000000),
                            blurRadius: 12,
                            spreadRadius: 0,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        cursorHeight: 30,
                        style: TextStyle(
                            color: Color(0x59000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: "Gordita"),
                        controller: cardnumbercontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(16),
                        ],
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    const SizedBox(height: 15),
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
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFFBFBFD),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x1C000000),
                                    blurRadius: 12,
                                    spreadRadius: 0,
                                    offset: Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: TextFormField(
                                cursorHeight: 30,
                                controller: expirydatecontroller,
                                style: TextStyle(
                                    color: Color(0x59000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: "Gordita"),
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  LengthLimitingTextInputFormatter(4),
                                ],
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "CVV",
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
                              width: 170,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFFBFBFD),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Color(0x1C000000),
                                    blurRadius: 12,
                                    spreadRadius: 0,
                                    offset: Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: TextFormField(
                                cursorHeight: 30,
                                controller: cvvcontroller,
                                style: TextStyle(
                                    color: Color(0x59000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: "Gordita"),
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                  // Limit the input
                                  LengthLimitingTextInputFormatter(3),
                                ],
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
