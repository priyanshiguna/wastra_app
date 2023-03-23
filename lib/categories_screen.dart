import 'package:flutter/material.dart';

import 'common/app_button.dart';
import 'mycart_screen.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

int checkBoxData = 0;
List<Color> listOfColor = [
  Color(0xffBEE8EA),
  Color(0xff141B4A),
  Color(0xffCEE3F5),
  Color(0xffF4E5C3),
];

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEFF2),
      body: Padding(
        padding: const EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                  Container(
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(
                      color: Color(0x80ffffff),
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/images/PHeart.png"),
                  ),
                ],
              ),
            ),
            Image.asset(
              "assets/images/PBlueShirt2.png",
              height: 363,
              width: 272,
            ),
            Container(
              width: double.infinity,
              height: 395,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Casual Henley\nShirts",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Gorditas",
                          ),
                        ),
                        Text(
                          "\$175",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Gorditas",
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "A Henley shirt is a collarless pullover shirt, by a round\nneckline and a placket about 3 to 5 inches (8 to 13 cm)\nlong and usually having 2–5 buttons.",
                      style: TextStyle(
                        color: Color(0x80404040),
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Gorditas",
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Colors",
                      style: TextStyle(
                        color: Color(0x80404040),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Gorditas",
                      ),
                    ),
                    const SizedBox(height: 30),
                    Container(
                      height: 30,
                      child: ListView.separated(
                        itemCount: listOfColor.length,
                        scrollDirection: Axis.horizontal,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) =>
                            const SizedBox(width: 10),
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            checkBoxData = index;
                            setState(() {});
                          },
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: listOfColor[index],
                                ),
                              ),
                              checkBoxData == index
                                  ? Container(
                                      width: 28,
                                      height: 28,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color(0xffF67952),
                                          width: 2,
                                        ),
                                      ),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: listOfColor[index],
                                        ),
                                      ),
                                    )
                                  : SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyCart(),
                            ));
                      },
                      child: const Align(
                          alignment: Alignment.center,
                          child: AppButton(
                            title: "Add to Cart",
                          )),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
