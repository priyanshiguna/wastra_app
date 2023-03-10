import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              left: 20,
              right: 20,
            ),
            child: Column(
              children: [
                const Text(
                  "My Orders",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Gorditas",
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                const TabBar(
                  physics: BouncingScrollPhysics(),
                  unselectedLabelStyle: TextStyle(),
                  indicatorWeight: 6,
                  indicatorColor: Color(0xFFF67952),
                  labelColor: Color(0xFFF67952),
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: "Ongoing",
                    ),
                    Tab(
                      text: "Cancelled",
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(children: [
                    Column(
                      children: [
                        SizedBox(height: 20),
                        Container(
                          height: 100,
                          width: 400,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color(0xADD7D9DB),
                                  spreadRadius: 5,
                                  blurRadius: 10.0,
                                  offset: Offset(0, 5))
                            ],
                          ),
                          child: Row(
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
                                        image: AssetImage(
                                            "assets/images/htops.png"),
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
                                    const Text(
                                      "\$250",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    //const Spacer(),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 5.0),
                              // Spacer(),
                              const Text(
                                "In Delivery",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Gorditas",
                                  color: Color(0x80000000),
                                ),
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                        ),
                        const SizedBox(height: 12.0),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color(0xADD7D9DB),
                                  spreadRadius: 5,
                                  blurRadius: 10.0,
                                  offset: Offset(0, 5))
                            ],
                          ),
                          child: Row(
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
                                        image: AssetImage(
                                            "assets/images/hshirt.png"),
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
                                    const Text(
                                      "\$145",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    //const Spacer(),
                                  ],
                                ),
                              ),
                              const Text(
                                "In Delivery",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Gorditas",
                                  color: Color(0x80000000),
                                ),
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color(0xADD7D9DB),
                                  spreadRadius: 5,
                                  blurRadius: 10.0,
                                  offset: Offset(0, 5))
                            ],
                          ),
                          child: Row(
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
                                        image: AssetImage(
                                            "assets/images/htshirt.png"),
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
                                  children: const [
                                    SizedBox(
                                      width: 100,
                                      child: Text(
                                        "Casual Nolin",
                                        style: TextStyle(
                                          color: Color(0xff423E3E),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 8.0),
                                    Text(
                                      "\$225",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    //const Spacer(),
                                  ],
                                ),
                              ),
                              const Text(
                                "In Delivery",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Gorditas",
                                  color: Color(0x80000000),
                                ),
                              ),
                              const SizedBox(width: 20),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15.0),
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Color(0xADD7D9DB),
                                  spreadRadius: 5,
                                  blurRadius: 10.0,
                                  offset: Offset(0, 5))
                            ],
                          ),
                          child: Row(
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
                                        image: AssetImage(
                                            "assets/images/htop.png"),
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
                                        textWidthBasis:
                                            TextWidthBasis.longestLine,
                                        style: TextStyle(
                                          color: Color(0xff423E3E),
                                          fontWeight: FontWeight.normal,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10.0),
                                    const Text(
                                      "\$225",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    //const Spacer(),
                                  ],
                                ),
                              ),
                              const Text(
                                "In Delivery",
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Gorditas",
                                  color: Color(0x80000000),
                                ),
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      color: Colors.transparent,
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomLineIndicatorBottomNavbar {}
