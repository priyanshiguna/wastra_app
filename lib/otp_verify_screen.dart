import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'common_widget/appbar_container.dart';
import 'create_new_password_screen.dart';

class ForgotSecondScreen extends StatefulWidget {
  const ForgotSecondScreen({Key? key}) : super(key: key);

  @override
  State<ForgotSecondScreen> createState() => _ForgotSecondScreenState();
}

class _ForgotSecondScreenState extends State<ForgotSecondScreen> {
  final TextEditingController fieldOne = TextEditingController();
  final TextEditingController fieldTwo = TextEditingController();
  final TextEditingController fieldThree = TextEditingController();
  final TextEditingController fieldFour = TextEditingController();

  String? otp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ForgotThirdScreen(),
              ),
            );
            setState(() {
              otp = fieldOne.text +
                  fieldTwo.text +
                  fieldThree.text +
                  fieldFour.text;
            });
          },
          child: Wrap(
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            children: [
              const AppButton(
                title: "Verify",
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const AppbarContainer(
              text: "Forgot Password",
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 30),
              child: Column(
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
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // const SizedBox(width: 20),
                      OtpInput(fieldOne, true),
// auto focus
                      OtpInput(fieldTwo, false),

                      OtpInput(fieldThree, false),

                      OtpInput(fieldFour, false),
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
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            )),
                        TextSpan(
                            text: ' 53',
                            style: TextStyle(
                                fontFamily: "Gordita",
                                color: Color(0xFFF67952),
                                fontSize: 16,
                                fontWeight: FontWeight.w400)),
                        TextSpan(
                            text: ' s',
                            style: TextStyle(
                              fontFamily: "Gordita",
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 69,
      child: TextField(
        autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        showCursor: false,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(
              color: Color(0xffF67952),
            ),
          ),
          counterText: '',
        ),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
