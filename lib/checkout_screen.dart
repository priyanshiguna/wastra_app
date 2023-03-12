import 'package:flutter/material.dart';
import 'package:wastra_app/payment_done_screen.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);
  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

bool checkBoxData = true;

class _CheckOutScreenState extends State<CheckOutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Checkout",
          //textDirection: TextDirection.,
        ),
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontFamily: "Gorditas",
        ),
        centerTitle: true,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 21,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Delivery address",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gorditas",
                  color: Color(0xFF0000000),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 86,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFFBFBFD),
                //color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/Hselect.png"),
                      height: 28,
                      width: 28,
                    ),
                    const SizedBox(width: 30),
                    RichText(
                      text: const TextSpan(
                        text: 'Home',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Gorditas",
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\n(342)  4522019',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Gorditas",
                              fontWeight: FontWeight.w600,
                              color: Color(0x80000000),
                            ),
                          ),
                          TextSpan(
                            text: "\n\n220  New York",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Gorditas",
                              fontWeight: FontWeight.w600,
                              color: Color(0x80000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Image(
                      image: AssetImage("assets/images/HEdit.png"),
                      height: 28,
                      width: 28,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 86,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade700),
                color: const Color(0xFFFBFBFD),
                //color: Colors.lightBlueAccent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.black12)),
                    ),
                    const SizedBox(width: 30),
                    RichText(
                      text: const TextSpan(
                        text: 'Office',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Gorditas",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: '\n(342)  4522019',
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Gorditas",
                              fontWeight: FontWeight.w600,
                              color: Color(0x80000000),
                            ),
                          ),
                          TextSpan(
                            text: "\n\n220  Montmartre,paris",
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "Gorditas",
                              fontWeight: FontWeight.w600,
                              color: Color(0x80000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    const Image(
                      image: AssetImage("assets/images/HEdit.png"),
                      height: 28,
                      width: 28,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Billing information",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gorditas",
                  color: Color(0xFF0000000),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Delivery Fee     : ",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gorditas",
                          color: Color(0x80000000),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$50",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gorditas",
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text(
                        "Subtotal               :",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gorditas",
                          color: Color(0x80000000),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$740",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gorditas",
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Divider(
                    height: 2,
                    color: Colors.black12,
                    thickness: 2,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: const [
                      Text(
                        "Total                        :",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Gorditas",
                          color: Color(0x80000000),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "\$790",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gorditas",
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Payment Method",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Gorditas",
                  color: Color(0xFF0000000),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(right: 35, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      const Image(
                        image: AssetImage("assets/images/hApplePay.png"),
                      ),
                      Checkbox(
                        shape: const CircleBorder(),
                        fillColor: MaterialStateProperty.all(
                          const Color(0xFF39CE8A),
                        ),
                        value: checkBoxData,
                        onChanged: (value) {
                          checkBoxData = value!;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  const Image(
                    image: AssetImage("assets/images/hvisa-logo.png"),
                  ),
                  const Image(
                    image: AssetImage("assets/images/hMastercard.png"),
                  ),
                  const Image(
                    image: AssetImage("assets/images/hpaypal.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentDoneScreen(),
                  ),
                );
              },
              child: Container(
                height: 55,
                width: 255,
                alignment: Alignment.center,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 38,
                      width: 38,
                      decoration: const BoxDecoration(
                        color: Color(0xFFFBFBFD),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Color(0xFFF67952),
                        size: 21,
                      ),
                    ),
                    const Text(
                      "Swipe for Payment",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFFF67952),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
