import 'package:flutter/material.dart';

class NotificationCommon extends StatelessWidget {
  final String? image;
  final String? titletext;
  final String? subtext;

  const NotificationCommon({Key? key, this.image, this.titletext, this.subtext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xffFBFBFD),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xADD7D9DB),
              spreadRadius: 0,
              blurRadius: 12,
              offset: Offset(0, 6))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                color: Color(0xffF67952),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(image!),
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  titletext!,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gordita",
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  subtext!,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0x80404040),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Gordita",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
