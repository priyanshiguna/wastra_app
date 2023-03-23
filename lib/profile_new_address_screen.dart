import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_common_widget/text_fill_common.dart';
import 'common/app_button.dart';
import 'common_widget/appbar_container.dart';

class ProfileAddNewAddressScreen extends StatefulWidget {
  const ProfileAddNewAddressScreen({Key? key}) : super(key: key);

  @override
  State<ProfileAddNewAddressScreen> createState() =>
      _ProfileAddNewAddressScreenState();
}

class _ProfileAddNewAddressScreenState
    extends State<ProfileAddNewAddressScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressOneController = TextEditingController();
  TextEditingController addressTwoController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, bottom: 10),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Wrap(
            runAlignment: WrapAlignment.center,
            alignment: WrapAlignment.center,
            children: const [
              AppButton(
                title: "Add",
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AppbarContainer(text: 'Add new Address'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: "Gordita",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFillContainer(
                    controller: nameController,
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Address Line- 1",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: "Gordita",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFillContainer(
                    controller: addressOneController,
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Address Line- 2",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: "Gordita",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFillContainer(
                    controller: addressTwoController,
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Landmark",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontFamily: "Gordita",
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextFillContainer(
                    controller: landmarkController,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "City",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: "Gordita",
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 57,
                            width: 170,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFBFBFD),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  blurRadius: 12,
                                  offset: Offset(0, 6),
                                  color: Color(0x1C000000),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: TextFormField(
                                cursorHeight: 20,
                                controller: cityController,
                                style: const TextStyle(
                                    color: Color(0x59000000),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    fontFamily: "Gordita"),
                                decoration: const InputDecoration(
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Pincode",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                              fontFamily: "Gordita",
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 57,
                            width: 170,
                            decoration: const BoxDecoration(
                              color: Color(0xFFFBFBFD),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  blurRadius: 12,
                                  offset: Offset(0, 6),
                                  color: Color(0x1C000000),
                                ),
                              ],
                            ),
                            child: TextFormField(
                              cursorHeight: 20,
                              controller: pinCodeController,
                              style: const TextStyle(
                                  color: Color(0x59000000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  fontFamily: "Gordita"),
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter.digitsOnly,
                                LengthLimitingTextInputFormatter(6),
                              ],
                              decoration: const InputDecoration(
                                  border: InputBorder.none),
                            ),
                          ),
                        ],
                      ),
                    ],
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
