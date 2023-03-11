import 'package:flutter/material.dart';

import 'hasti_common_widget/container_common.dart';

class OrderCompleteScreen extends StatefulWidget {
  const OrderCompleteScreen({Key? key}) : super(key: key);

  @override
  State<OrderCompleteScreen> createState() => _OrderCompleteScreenState();
}

int _rating = 0;

class _OrderCompleteScreenState extends State<OrderCompleteScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              const Text(
                "My Orders",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  //fontFamily: "Gorditas",
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
                    text: "Complete",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 20),
                        ContainerScreen(
                          color: Colors.grey[300],
                          image: "assets/images/htops.png",
                          text: "Henley Shirts",
                          subtext: "\$250",
                          titletext: "In Delivery",
                        ),
                        const SizedBox(height: 12.0),
                        const ContainerScreen(
                          color: Color(0xffdef1ed),
                          image: "assets/images/hshirt.png",
                          text: "Casual Shirts",
                          subtext: "\$145",
                          titletext: "In Delivery",
                        ),
                        const SizedBox(height: 15.0),
                        ContainerScreen(
                          color: Colors.grey[200],
                          image: "assets/images/htshirt.png",
                          text: "Casual Nolin",
                          subtext: "\$225",
                          titletext: "In Delivery",
                        ),
                        const SizedBox(height: 15.0),
                        ContainerScreen(
                          color: Colors.grey[200],
                          image: "assets/images/htop.png",
                          text: "Casual Nolin",
                          subtext: "\$225",
                          titletext: "In Delivery",
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ContainerScreen(
                          color: Colors.grey[200],
                          image: "assets/images/htop.png",
                          text: "Casual Nolin",
                          subtext: "\$225",
                          titletext: "Completed",
                          isButton: true,
                          onPress: () {
                            dialogBox();
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void rate(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  dialogBox() {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(50),
            topLeft: Radius.circular(50),
          ),
        ),
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setState) => SizedBox(
              height: 900,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Leave a review",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gordita",
                      color: Colors.black,
                    ),
                  ),
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
                          "Completed",
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
                  const Text(
                    "How is your order?",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Gordita",
                      color: Color(0x80000000),
                    ),
                  ),
                  const Text(
                    "Please give your rating & also a review",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Gordita",
                      color: Color(0x80000000),
                    ),
                  ),
                  SizedBox(
                    width: 500.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          child: Icon(
                            Icons.star,
                            color: _rating >= 1 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () {
                            rate(1);
                            setState(() {});
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.star,
                            color: _rating >= 2 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () {
                            rate(2);
                            setState(() {});
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.star,
                            color: _rating >= 3 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () {
                            rate(3);
                            setState(() {});
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.star,
                            color: _rating >= 4 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () {
                            rate(4);
                            setState(() {});
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.star,
                            color: _rating >= 5 ? Colors.orange : Colors.grey,
                          ),
                          onTap: () {
                            rate(5);
                            setState(() {});
                          },
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 335,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Color(0xADD7D9DB),
                            spreadRadius: 5,
                            blurRadius: 10.0,
                            offset: Offset(0, 5))
                      ],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "Very Good product & very fast delivery",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Gordita",
                            color: Color(0x80000000),
                          ),
                        ),
                        Image(
                          image: AssetImage("assets/images/Himage.png"),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OrderCompleteScreen(),
                            ),
                          );
                        },
                        child: Container(
                          height: 44,
                          width: 158,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: const Color(0xFFF67952),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(68),
                            ),
                          ),
                          child: const Text(
                            "Cancel",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: "Gordita",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 44,
                        width: 158,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF67952),
                          borderRadius: BorderRadius.all(
                            Radius.circular(68),
                          ),
                        ),
                        child: const Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Gordita",
                            color: Color(0xFFFBFBFD),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
