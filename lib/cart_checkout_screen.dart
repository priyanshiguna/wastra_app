import 'package:flutter/material.dart';

import 'checkout_screen.dart';

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
      appBar: AppBar(
        title: const Text(
          "My Cart",
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
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 21,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              //1
              const SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 84.0,
                    height: 73.0,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          image: const DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage("assets/images/htops.png"),
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 92,
                          height: 20,
                          child: const Text(
                            "Henley Shirts",
                            style: TextStyle(
                              color: Color(0xff423E3E),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            const Text(
                              "\$250",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //const Spacer(),
                            const SizedBox(width: 121.0),
                            Container(
                              width: 26.0,
                              height: 21.48,
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
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "1",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 26.0,
                              height: 21.48,
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF3CDC1),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: const [
                                  Icon(
                                    Icons.minimize_outlined,
                                    color: Color(0xFFF67952),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //2
              const SizedBox(height: 12.0),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xffdef1ed),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          image: const DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage("assets/images/hshirt.png"),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          child: const Text(
                            "Casual Shirts",
                            style: TextStyle(
                              color: Color(0xff423E3E),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            const Text(
                              "\$145",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //const Spacer(),
                            const SizedBox(width: 121.0),
                            Container(
                              width: 26.0,
                              height: 21.48,
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                color: const Color(0xFFFAC9BA),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Color(0xFFF67952),
                                size: 15.0,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 26.0,
                              height: 21.48,
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF3CDC1),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: const [
                                  Icon(
                                    Icons.minimize_outlined,
                                    color: Color(0xFFF67952),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          image: const DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage("assets/images/htshirt.png"),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          child: const Text(
                            "Casual Nolin",
                            style: TextStyle(
                              color: Color(0xff423E3E),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8.0),
                        Row(
                          children: [
                            const Text(
                              "\$225",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //const Spacer(),
                            const SizedBox(width: 121.0),

                            Container(
                              width: 26.0,
                              height: 21.48,
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
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 26.0,
                              height: 21.48,
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF3CDC1),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: const [
                                  Icon(
                                    Icons.minimize_outlined,
                                    color: Color(0xFFF67952),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  Container(
                    width: 80.0,
                    height: 80.0,
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Container(
                        width: 60.0,
                        height: 60.0,
                        padding: const EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                          // color: Colors.grey,
                          image: const DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: AssetImage("assets/images/htop.png"),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          height: 20,
                          //alignment: Alignment.topLeft,
                          child: const Text(
                            "Casual Nolin ",
                            textWidthBasis: TextWidthBasis.longestLine,
                            style: TextStyle(
                              color: Color(0xff423E3E),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            const Text(
                              "\$225",
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            //const Spacer(),
                            const SizedBox(width: 121.0),
                            Container(
                              width: 26.0,
                              height: 21.48,
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
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "2",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              width: 26.0,
                              height: 21.48,
                              // color: Colors.red,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF3CDC1),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: const [
                                  Icon(
                                    Icons.minimize_outlined,
                                    color: Color(0xFFF67952),
                                    size: 15.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  Container(
                    width: 100,
                    child: const Text(
                      " Subtotal :",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  const SizedBox(width: 211.0),
                  Row(
                    children: const [
                      Text(
                        "\$740",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20.0),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut(),),);
                },
                child: Container(
                  height: 55,
                  width: 255,
                  alignment: Alignment.center,
                  child: const Text(
                    "Checkout",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
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
      ),
    );
  }
}
