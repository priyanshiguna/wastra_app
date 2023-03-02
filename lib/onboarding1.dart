import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    "1/3",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10, top: 5),
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Container(
                    height: 350,
                    width: 350,
                    child: Image.asset("assets/images/2.png"),
                  ),
                )
              ],
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 110, top: 10),
                  child: Text(
                    "Choose Product",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    "A product is the item offerd for sale.",
                    //         "A product cab be a service for an item. It can be"
                    //       "physical or in virtual or cyber form"
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black54),
                  ),
                ),
                Text(
                  "A product cab be a service for an item. It can be",
                  //       "physical or in virtual or cyber form"
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                Text(
                  "physical or in virtual or cyber form",
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Container(
                      height: 50,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.deepOrange),
                      child: const Center(
                        child: Text(
                          "Next >",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w400),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
