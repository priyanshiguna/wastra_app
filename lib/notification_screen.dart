import 'package:flutter/material.dart';

import 'app_common_widget/app_notification_common.dart';
import 'common_widget/appbar_container.dart';

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
      body: SafeArea(
        child: Column(
          children: [
            const AppbarContainer(
              text: "Notification",
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 15),
                  Text(
                    "Today",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gordita",
                    ),
                  ),
                  SizedBox(height: 15),
                  NotificationCommon(
                    image: "assets/images/Pdiscountnotification.png",
                    titletext: "30% Special Discount",
                    subtext: "Special Promotion only valid today.",
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Yesterday",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gordita",
                    ),
                  ),
                  SizedBox(height: 15),
                  NotificationCommon(
                    image: "assets/images/Pwalletnotification.png",
                    titletext: "Top Up E-Wallet Successful",
                    subtext: "You have to top up your e-wallet.",
                  ),
                  SizedBox(height: 15),
                  NotificationCommon(
                    image: "assets/images/Pservicenotification.png",
                    titletext: "New Service Available!",
                    subtext: "Now you can track orders in real time.",
                  ),
                  SizedBox(height: 15),
                  Text(
                    "January 31, 2023",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Gordita",
                    ),
                  ),
                  SizedBox(height: 15),
                  NotificationCommon(
                    image: "assets/images/Pcreditnotification.png",
                    titletext: "Credit card Connected.",
                    subtext: "Credit card has been linked.",
                  ),
                  SizedBox(height: 15),
                  NotificationCommon(
                    image: "assets/images/Pprofilenotification.png",
                    titletext: "Account Setup Successful!",
                    subtext: "Your account has been creadited.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
