import 'package:flutter/material.dart';
import 'package:wastra_app/payment_done_screen.dart';

class CheckOutScreen extends StatefulWidget {
  const CheckOutScreen({Key? key}) : super(key: key);
  @override
  State<CheckOutScreen> createState() => _CheckOutScreenState();
}

class _CheckOutScreenState extends State<CheckOutScreen> {
  bool container = false;
  var currentIndex = 0;
  int checkBoxData = 0;
  bool agree = false;
  bool checkbox = false;
  List<String> imageList = [
    "assets/images/hApplePay.png",
    "assets/images/hvisa-logo.png",
    "assets/images/hMastercard.png",
    "assets/images/hpaypal.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Checkout",
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
            ListView.builder(
              itemCount: 1,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Column(
                  children: [
                    Container(
                      height: 86,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color:
                                agree! ? const Color(0x1C000000) : Colors.white,
                            spreadRadius: 0,
                            blurRadius: 12.0,
                            offset: const Offset(0, 6),
                          ),
                        ],
                        border: Border.all(
                            color:
                                agree! ? Colors.white : Colors.grey.shade700),
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
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                shape: const CircleBorder(),
                                fillColor: MaterialStateProperty.all(
                                  const Color(0xFFF67952),
                                ),
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                value: agree,
                                onChanged: (value) {
                                  setState(() {
                                    agree = value ?? false;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 30),
                            RichText(
                              text: const TextSpan(
                                text: 'Home\n',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Gorditas",
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '(342)  4522019',
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
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: checkbox!
                                ? const Color(0x1C000000)
                                : Colors.white,
                            spreadRadius: 0,
                            blurRadius: 12.0,
                            offset: const Offset(0, 6),
                          ),
                        ],
                        border: Border.all(
                            color: checkbox!
                                ? Colors.white
                                : Colors.grey.shade700),
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
                            Transform.scale(
                              scale: 1.5,
                              child: Checkbox(
                                shape: const CircleBorder(),
                                fillColor: MaterialStateProperty.all(
                                  const Color(0xFFF67952),
                                ),
                                side: const BorderSide(
                                  color: Colors.grey,
                                ),
                                value: checkbox,
                                onChanged: (value) {
                                  setState(() {
                                    checkbox = value ?? false;
                                  });
                                },
                              ),
                            ),
                            const SizedBox(width: 30),
                            RichText(
                              text: const TextSpan(
                                text: 'Office\n',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Gorditas",
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: '(342)  4522019',
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
                        "Delivery Fee           : ",
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
                        "Subtotal                  :",
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
            Container(
              height: 90,
              child: ListView.separated(
                itemCount: imageList.length,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => const SizedBox(width: 14),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    checkBoxData = index;
                    setState(() {});
                  },
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        height: 60,
                        width: 70,
                        margin: const EdgeInsets.only(top: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image(
                          image: AssetImage(imageList[index]),
                        ),
                      ),
                      checkBoxData == index
                          ? Image.asset(
                              "assets/images/check_box.png",
                              height: 25,
                              width: 25,
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70),
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color(0xFFF67952),
                ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
