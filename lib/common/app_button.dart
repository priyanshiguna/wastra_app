import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  const AppButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 256,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFFF67952),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              fontFamily: "Gordita"),
        ),
      ),
    );
  }
}
