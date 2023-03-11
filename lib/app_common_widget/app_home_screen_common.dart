import 'package:flutter/material.dart';

class AppCommonContainer extends StatelessWidget {
  final String? image;
  const AppCommonContainer({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 154,
      height: 188,
      decoration: const BoxDecoration(
        color: Color(0xFFFBFBFD),
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xFFEFEFF2),
              spreadRadius: 5,
              blurRadius: 12.0,
              offset: Offset(0, 5))
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Container(
              height: 140,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xffEFEFF2),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Image.asset(image!),
            ),
            SizedBox(height: 10),
            Row(
              children: const [
                Text(
                  "Long Sleeve\nShirts",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Text(
                  "\$165",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
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
