import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Notification",
        ),
        elevation: 0,
        titleTextStyle: const TextStyle(
          color: Colors.black,
          fontSize: 20,
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              const Text(
                "Today",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Gorditas",
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 92,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFD),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xADD7D9DB),
                        spreadRadius: 5,
                        blurRadius: 12.0,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          color: Color(0xffF67952),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                              "assets/images/Pdiscountnotification.png"),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "30% Special Discount",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Gorditas",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Special Promotion only valid today.",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0x80404040),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gorditas",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Yesterday",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Gorditas",
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 92,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFD),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xADD7D9DB),
                        spreadRadius: 5,
                        blurRadius: 12.0,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          color: Color(0xffF67952),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                            "assets/images/Pwalletnotification.png",
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Top Up E-Wallet Successful",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Gorditas",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "You have to top up your e-wallet.",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0x80404040),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gorditas",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 92,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFD),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xADD7D9DB),
                        spreadRadius: 5,
                        blurRadius: 12.0,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          color: Color(0xffF67952),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                              "assets/images/Pservicenotification.png"),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "New Service Available!",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Gorditas",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Now you can track orders in real time.",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0x80404040),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gorditas",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "January 31, 2023",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Gorditas",
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 92,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFD),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xADD7D9DB),
                        spreadRadius: 5,
                        blurRadius: 12.0,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          color: Color(0xffF67952),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                              "assets/images/Pcreditnotification.png"),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Credit card Connected.",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Gorditas",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Credit card has been linked.",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0x80404040),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gorditas",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                height: 92,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xffFBFBFD),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Color(0xADD7D9DB),
                        spreadRadius: 5,
                        blurRadius: 12.0,
                        offset: Offset(0, 5))
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                          color: Color(0xffF67952),
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Image.asset(
                              "assets/images/Pprofilenotification.png"),
                        ),
                      ),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            "Account Setup Successful!",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Gorditas",
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Your account has been creadited.",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Color(0x80404040),
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Gorditas",
                            ),
                          ),
                        ],
                      ),
                    ],
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
