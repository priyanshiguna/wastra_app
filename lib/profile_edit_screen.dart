import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wastra_app/common_widget/appbar_container.dart';

import 'app_common_widget/text_fill_common.dart';
import 'common/app_button.dart';

class ProfileEditScreen extends StatefulWidget {
  const ProfileEditScreen({Key? key}) : super(key: key);

  @override
  State<ProfileEditScreen> createState() => _ProfileEditScreenState();
}

class _ProfileEditScreenState extends State<ProfileEditScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController dateofbirthcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController countrycontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();

  final List<String> items = [
    'Male',
    'Female',
    'Other',
  ];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
        child: SafeArea(
          child: Column(
            children: [
              const AppbarContainer(text: 'Edit Profile'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    TextFillContainer(
                      hintText: "Name",
                      controller: namecontroller,
                    ),
                    const SizedBox(height: 15),
                    TextFillContainer(
                      hintText: "Date of Birth",
                      controller: dateofbirthcontroller,
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 15),
                    TextFillContainer(
                      hintText: "Email",
                      controller: emailcontroller,
                    ),
                    const SizedBox(height: 15),
                    TextFillContainer(
                      hintText: "Country of residence",
                      controller: countrycontroller,
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 57,
                      width: double.infinity,
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFBFBFD),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1C000000),
                            blurRadius: 12,
                            spreadRadius: 0,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: IntlPhoneField(
                        dropdownIconPosition: IconPosition.leading,
                        dropdownIcon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0x80000000),
                        ),
                        textAlignVertical: TextAlignVertical.center,
                        style: const TextStyle(
                          color: Color(0xFF000000),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: "Gordita",
                        ),
                        decoration: const InputDecoration(
                          contentPadding: EdgeInsets.zero,
                          counter: SizedBox(height: 0),
                          hintText: "Number",
                          hintStyle: TextStyle(
                            color: Color(0x59000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            fontFamily: "Gordita",
                          ),
                          border: InputBorder.none,
                        ),
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      height: 57,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFFBFBFD),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x1C000000),
                            blurRadius: 12,
                            spreadRadius: 0,
                            offset: Offset(0, 6),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: DropdownButtonFormField(
                          style: const TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: "Gordita",
                          ),
                          icon: const Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Color(0x80000000),
                          ),
                          onChanged: (v) {},
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: "Gender",
                            hintStyle: TextStyle(
                              color: Color(0x59000000),
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              fontFamily: "Gordita",
                            ),
                          ),
                          items: const [
                            DropdownMenuItem(
                              value: "MALE",
                              child: Text(
                                "Male",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: "Gordita",
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "FEMALE",
                              child: Text(
                                "Female",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: "Gordita",
                                ),
                              ),
                            ),
                            DropdownMenuItem(
                              value: "Other",
                              child: Text(
                                "Other",
                                style: TextStyle(
                                  color: Color(0xFF000000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  fontFamily: "Gordita",
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
