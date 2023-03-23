import 'package:flutter/material.dart';

class DrawerProfileScreen extends StatelessWidget {
  const DrawerProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, bottom: 20),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/images/profile.png",
                  height: 71,
                  width: 71,
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Alex  Nikiforov",
                      style: TextStyle(
                        fontFamily: "Gordita",
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "alex@msn.com",
                      style: TextStyle(
                        fontFamily: "Gordita",
                        color: Color(0x40000000),
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 20,
                )
              ],
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Container(
                  height: 24,
                  width: 27,
                  decoration: BoxDecoration(
                    color: Color(0x1AF67952),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      "assets/images/profilefav.png",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "My favorites",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 24,
                  width: 27,
                  decoration: BoxDecoration(
                    color: Color(0x1AF67952),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      "assets/images/orderBag.png",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "My orders",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 24,
                  width: 27,
                  decoration: BoxDecoration(
                    color: Color(0x1AF67952),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Image.asset(
                      "assets/images/Documents.png",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "About us",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 24,
                  width: 27,
                  decoration: BoxDecoration(
                    color: Color(0x1AF67952),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      "assets/images/privacy.png",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Privacy policy",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Container(
                  height: 24,
                  width: 27,
                  decoration: BoxDecoration(
                    color: Color(0x1AF67952),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      "assets/images/Settings.png",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Settings",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 130),
            Row(
              children: [
                Container(
                  height: 24,
                  width: 27,
                  decoration: BoxDecoration(
                    color: Color(0x1AF67952),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: Image.asset(
                      "assets/images/appLogout.png",
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  "Log out",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: Image.asset(
                "assets/images/login.png",
                height: 60,
                width: 52,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
