import 'package:flutter/material.dart';

class AppbarContainer extends StatelessWidget {
  final String? text;
  const AppbarContainer({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      title: Text(
        text ?? "",
        style: const TextStyle(
          color: Colors.black,
          fontFamily: "Gordita",
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      centerTitle: true,
      backgroundColor: const Color(0xFFFBFBFD),
      elevation: 0,
    );
  }
}
