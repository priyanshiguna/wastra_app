import 'package:flutter/material.dart';
import 'package:wastra_app/profile_address_screen.dart';
import 'package:wastra_app/profile_edit_screen.dart';
import 'package:wastra_app/profile_payment_screen.dart';

class ProfilePageScreen extends StatefulWidget {
  const ProfilePageScreen({Key? key}) : super(key: key);

  @override
  State<ProfilePageScreen> createState() => _ProfilePageScreenState();
}

class _ProfilePageScreenState extends State<ProfilePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 285,
            width: double.infinity,
            child: Stack(
              fit: StackFit.passthrough,
              children: [
                Image.asset(
                  "assets/images/background.png",
                  height: 260,
                  width: double.infinity,
                ),
                Column(
                  children: [
                    const SizedBox(height: 95),
                    const Text(
                      "Profile",
                      style: TextStyle(
                          fontFamily: "Gordita",
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 25),
                    Image.asset(
                      "assets/images/profile.png",
                      height: 135,
                      width: 135,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Text(
                  "Alex  Nikiforov",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "alex@msn.com",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    color: Color(0x40000000),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/sprofile.png",
                      height: 22,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Edit Profile",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Gordita",
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ProfileEditScreen(),
                            ));
                      },
                      icon: const Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey, size: 30),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/slock.png",
                      height: 22,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Address",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Gordita",
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ProfileAddressScreen(),
                            ));
                      },
                      icon: const Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey, size: 30),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/wallet.png",
                      height: 22,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Payment",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Gordita",
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ProfilePaymentScreen(),
                            ));
                      },
                      icon: const Icon(Icons.keyboard_arrow_right,
                          color: Colors.grey, size: 30),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/images/sexit.png",
                      height: 22,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Logout",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Gordita",
                        color: Color(0xFFF75555),
                      ),
                    ),
                    const Spacer(),
                    const Icon(Icons.keyboard_arrow_right,
                        color: Colors.grey, size: 30),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
