import 'package:flutter/material.dart';

class AppCommonContainer extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final String? titleText;
  final bool? isRect;

  const AppCommonContainer(
      {Key? key,
      this.height,
      this.width,
      this.color,
      this.titleText,
      this.isRect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius:
            isRect! ? null : const BorderRadius.all(Radius.circular(10)),
        color: color ?? Colors.transparent,
        border:
            color == null ? Border.all(color: const Color(0x47000000)) : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            "assets/images/PyellowDress.png",
            height: 37,
            width: 27,
          ),
          Text(
            titleText!,
            style: const TextStyle(
              fontFamily: "Gorditas",
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
