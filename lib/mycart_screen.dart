import 'package:flutter/material.dart';

import 'checkout_screen.dart';
import 'common/app_button.dart';

class MyCart extends StatefulWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 21,
                    ),
                  ),
                  const SizedBox(
                    width: 130,
                  ),
                  const Text(
                    "My Cart",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gordita",
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              //1
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    width: 84.0,
                    height: 80.0,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image.asset(
                      "assets/images/htops.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Henley Shirts",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0x80000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Gordita",
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "\$250",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gordita",
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Container(
                    width: 26.0,
                    height: 22,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3CDC1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Color(0xFFF67952),
                      size: 15.0,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "1",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Gordita",
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 26.0,
                    height: 21.48,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3CDC1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(
                        Icons.minimize_outlined,
                        color: Color(0xFFF67952),
                        size: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              //2
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    width: 84.0,
                    height: 80.0,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color(0xffdef1ed),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image.asset(
                      "assets/images/hshirt.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Casual Shirts",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0x80000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Gordita",
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "\$145",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gordita",
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Container(
                    width: 26.0,
                    height: 22,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3CDC1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Color(0xFFF67952),
                      size: 15.0,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "2",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Gordita",
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 26.0,
                    height: 21.48,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3CDC1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(
                        Icons.minimize_outlined,
                        color: Color(0xFFF67952),
                        size: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              //3
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    width: 84.0,
                    height: 80.0,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image.asset(
                      "assets/images/htshirt.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Casual Nolin",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0x80000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Gordita",
                        ),
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        "\$225",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gordita",
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Container(
                    width: 26.0,
                    height: 22,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3CDC1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Color(0xFFF67952),
                      size: 15.0,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "2",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Gordita",
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 26.0,
                    height: 21.48,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3CDC1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(
                        Icons.minimize_outlined,
                        color: Color(0xFFF67952),
                        size: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              //4
              const SizedBox(height: 10.0),
              Row(
                children: [
                  Container(
                    width: 84.0,
                    height: 80.0,
                    margin: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Image.asset(
                      "assets/images/htop.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Casual Nolin",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color(0x80000000),
                          fontWeight: FontWeight.w400,
                          fontFamily: "Gordita",
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text(
                        "\$225",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gordita",
                          color: Color(0xFF000000),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 100),
                  Container(
                    width: 26.0,
                    height: 22,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3CDC1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Color(0xFFF67952),
                      size: 15.0,
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    "2",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color(0xFF000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: "Gordita",
                    ),
                  ),
                  const SizedBox(width: 5),
                  Container(
                    width: 26.0,
                    height: 21.48,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF3CDC1),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Icon(
                        Icons.minimize_outlined,
                        color: Color(0xFFF67952),
                        size: 15.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 200.0),
              Row(
                children: [
                  Container(
                    width: 100,
                    child: const Text(
                      " Subtotal     :",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF000000),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(width: 220.0),
                  Row(
                    children: const [
                      Text(
                        "\$740",
                        style: TextStyle(
                          fontSize: 19,
                          color: Color(0xFF222030),
                          fontFamily: 'Gordita',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckOutScreen(),
                    ),
                  );
                },
                child: const AppButton(
                  title: "Checkout",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
