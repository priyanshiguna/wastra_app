import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'common_widget/appbar_container.dart';
import 'forgot_third_screen.dart';

class ForgotSecondScreen extends StatefulWidget {
  const ForgotSecondScreen({Key? key}) : super(key: key);

  @override
  State<ForgotSecondScreen> createState() => _ForgotSecondScreenState();
}

class _ForgotSecondScreenState extends State<ForgotSecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const AppbarContainer(
              text: "Forgot Password",
            ),
            Column(
              children: [
                const SizedBox(
                  height: 180,
                ),
                const Text(
                  "Code has been sent to nik******@gmail.com",
                  style: TextStyle(
                    fontFamily: "Gordita",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 55,
                      width: 69,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black26)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 55,
                      width: 69,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black26)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 55,
                      width: 69,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black26)),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 55,
                      width: 69,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black26)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 36),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Resend code in',
                          style: TextStyle(
                              fontFamily: "Gordita",
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: ' 55',
                          style: TextStyle(
                              fontFamily: "Gordita",
                              color: Colors.orange,
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                      TextSpan(
                          text: 's',
                          style: TextStyle(
                              fontFamily: "Gordita",
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w400)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 200,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ForgotthirdScreen(),
                      ),
                    );
                  },
                  child: const AppButton(
                    title: "Verify",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
