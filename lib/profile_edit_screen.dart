import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            CountryPickerDropdown(
                              initialValue: 'AR',
                              itemBuilder: _buildDropdownItem(),
                              // itemFilter:  ['DE', "AR", 'GB', 'CN'].contains(c.isoCode),
                              priorityList: [
                                CountryPickerUtils.getCountryByIsoCode('GB'),
                                CountryPickerUtils.getCountryByIsoCode('CN'),
                              ],
                              sortComparator: (Country a, Country b) =>
                                  a.isoCode.compareTo(b.isoCode),
                              onValuePicked: (Country country) {
                                print("${country.name}");
                              },
                            ),
                            const SizedBox(width: 10),
                            const Icon(Icons.keyboard_arrow_down),
                            const SizedBox(width: 10),
                            TextFormField(
                              cursorHeight: 20,
                              controller: numbercontroller,
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
                          ],
                        ),
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
                          style: TextStyle(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            fontFamily: "Gordita",
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
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
                              ),
                            ),
                            DropdownMenuItem(
                              child: Text(
                                "Female",
                              ),
                              value: "FEMALE",
                            ),
                            DropdownMenuItem(
                              child: Text(
                                "Other",
                              ),
                              value: "Other",
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

_buildDropdownItem() {
  buildDropdownItem(Country country) => Container(
        child: Row(
          children: <Widget>[
            CountryPickerUtils.getDefaultFlagImage(country),
            SizedBox(
              width: 8.0,
            ),
            Text("+${country.phoneCode}(${country.isoCode})"),
          ],
        ),
      );
}
