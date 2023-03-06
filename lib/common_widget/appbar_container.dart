import 'package:flutter/material.dart';

class AppbarContainer extends StatelessWidget {
  final String? text;
  const AppbarContainer({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        text ?? "",
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
      leading: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      centerTitle: true,
      backgroundColor: const Color(0xFFFBFBFD),
      elevation: 0,
    );
  }
}
