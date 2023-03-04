import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Search",
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
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
          size: 21,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 55,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/PSearch.png",
                      height: 15,
                      width: 15,
                    ),
                    SizedBox(width: 5),
                    const Text(
                      "Shirt",
                      style: TextStyle(
                        fontFamily: "Gorditas",
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 43,
                      width: 47,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF67952),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        "assets/images/PFilter.png",
                        height: 12,
                        width: 12,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(
              thickness: 1,
              color: Color(0xff1C1A19),
              height: 1,
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Search results showing for “Shirt”",
                  style: TextStyle(
                    fontFamily: "Gorditas",
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
