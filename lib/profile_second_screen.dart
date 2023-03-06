import 'package:flutter/material.dart';
import 'package:wastra_app/common_widget/appbar_container.dart';

class ProfileScreenOne extends StatefulWidget {
  const ProfileScreenOne({Key? key}) : super(key: key);

  @override
  State<ProfileScreenOne> createState() => _ProfileScreenOneState();
}

class _ProfileScreenOneState extends State<ProfileScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const AppbarContainer(text: 'Edit Profile'),
              const SizedBox(height: 30),
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                        color: Color(0x40000000),
                      ),
                    ],
                    color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                  child: Text(
                    "Jacks",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Gordita",
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 60,
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  child: Text(
                    "12/10/1995",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontFamily: "Gordita",
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 60,
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 12),
                  child: Text(
                    "ndhghjjh@gmail.com",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Gordita",
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 60,
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                  child: Text(
                    "India",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Gordita",
                        color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 60,
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
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/india.png",
                        height: 18,
                        width: 27,
                      ),
                      const SizedBox(width: 10),
                      const Icon(Icons.keyboard_arrow_down),
                      const SizedBox(width: 10),
                      const Text(
                        "+91 9876543210",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 60,
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
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Male",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gordita",
                        ),
                      ),
                      Icon(Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 120),
              Container(
                height: 55,
                width: 256,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    boxShadow: const [
                      BoxShadow(
                        spreadRadius: 0,
                        blurRadius: 12,
                        offset: Offset(0, 3),
                        color: Color(0x40000000),
                      ),
                    ],
                    color: const Color(0xFFF67952)),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gordita",
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
