import 'package:flutter/material.dart';

import 'common_widget/appbar_container.dart';

class AddNewAddressScreen extends StatefulWidget {
  const AddNewAddressScreen({Key? key}) : super(key: key);

  @override
  State<AddNewAddressScreen> createState() => _AddNewAddressScreenState();
}

class _AddNewAddressScreenState extends State<AddNewAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AppbarContainer(text: 'Add new Address'),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Name",
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
                      "Home",
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
                    "Address Line- 1",
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
                      "304, City Center",
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
                    "Address Line- 2",
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
                      "Yogichowk",
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
                    "Landmark",
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
                      "Yogichowk",
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
                          "City",
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
                              "Surat",
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
                          "Pincode",
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
                              "395010",
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
                const SizedBox(height: 220),
                Container(
                  height: 55,
                  width: 256,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xFFF67952)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Add New Card",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: "Gordita",
                              fontWeight: FontWeight.bold),
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
