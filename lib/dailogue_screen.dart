import 'package:flutter/material.dart';

class DailogueScreen extends StatefulWidget {
  const DailogueScreen({Key? key}) : super(key: key);

  @override
  State<DailogueScreen> createState() => _DailogeScreenState();
}

class _DailogeScreenState extends State<DailogueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 120,
              width: 120,
            ),
            const AlertDialog(
              title: Center(child: Text("Congratulations")),
              titleTextStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              content: Text("Save successfully"),
            )
          ],
        ),
      ),
    );
  }
}
