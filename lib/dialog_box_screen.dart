import 'dart:async';

import 'package:flutter/material.dart';

import 'bottom_bar_screen.dart';

class DialoagBoxScreen extends StatefulWidget {
  const DialoagBoxScreen({Key? key}) : super(key: key);

  @override
  State<DialoagBoxScreen> createState() => _DialoagBoxScreenState();
}

class _DialoagBoxScreenState extends State<DialoagBoxScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context as BuildContext,
        MaterialPageRoute(
          builder: (context) => const BottomBarScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(21),
        ),
      ),
      elevation: 0,
      child: Container(
        height: 430,
        width: 300,
        decoration: BoxDecoration(
          color: Color(0xFFFBFBFD),
          borderRadius: BorderRadius.all(
            Radius.circular(21),
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/hlogos.png"),
                Image.asset("assets/images/hlogo.png"),
              ],
            ),
            SizedBox(height: 30),
            Text(
              "Congratulations!",
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 18.13,
                  fontFamily: "Gordita",
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 20),
            Text(
              "Your account is ready to use. you will\nbe redirected to the Home page in a\n",
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 13.36,
                  fontFamily: "Gordita",
                  fontWeight: FontWeight.w400),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "few seconds.",
                style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 13.36,
                    fontFamily: "Gordita",
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 30),
            Image.asset("assets/images/hsearching.png"),
          ],
        ),
      ),
    );
  }
}
