import 'package:flutter/material.dart';
import 'package:wastra_app/common_widget/appbar_container.dart';

class ProfileScreenTwo extends StatefulWidget {
  const ProfileScreenTwo({Key? key}) : super(key: key);

  @override
  State<ProfileScreenTwo> createState() => _ProfileScreenTwoState();
}

class _ProfileScreenTwoState extends State<ProfileScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const AppbarContainer(text: 'Address'),
            SizedBox(height: 20),
            Container(
              height: 92,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                      color: Color(0x40000000),
                    ),
                  ],
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF67952),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/location.png",
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Gordita",
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "304, City Center, Yogichowk,Surat.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Gordita",
                            color: Color(0x80000000),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    const Image(
                      image: AssetImage("assets/images/Sedit.png"),
                      width: 24,
                      height: 24,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 92,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                      color: Color(0x40000000),
                    ),
                  ],
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFF67952),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/location.png",
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Office",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "304, City Center, Yogichowk,Surat.",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Gordita",
                            fontWeight: FontWeight.w600,
                            color: Color(0x80000000),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 20),
                    const Image(
                      image: AssetImage("assets/images/Sedit.png"),
                      width: 24,
                      height: 24,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 365),
            Container(
              height: 55,
              width: 256,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFF67952)),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Add New Address",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Gordita",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
