import 'package:flutter/material.dart';

class TextFillContainer extends StatelessWidget {
  final String? text;
  final String? image;
  final bool? isRequired;
  final bool? isSelect;

  const TextFillContainer({
    Key? key,
    this.text,
    this.image,
    this.isRequired = false,
    this.isSelect = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            isRequired!
                ? Container(
                    height: 45,
                    width: 48,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0x1AF67952)),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(image!),
                    ),
                  )
                : const SizedBox(),
            const SizedBox(
              width: 10,
            ),
            Text(
              text!,
              style: const TextStyle(
                  fontFamily: "Gordita",
                  color: Color(0x59000000),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const Spacer(),
            isSelect!
                ? const Image(image: AssetImage("assets/images/showpass.png"))
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
