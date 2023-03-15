import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  final String? image;
  final String? text;
  final String? subtext;
  final String? titletext;
  final Color? color;
  final bool? isButton;
  final VoidCallback? onPress;

  const ContainerScreen({
    Key? key,
    this.image,
    this.text,
    this.color,
    this.subtext,
    this.titletext,
    this.isButton = false,
    this.onPress,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 380,
      padding: const EdgeInsets.only(left: 5, right: 10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Color(0xADD7D9DB),
              spreadRadius: 3,
              blurRadius: 4.0,
              offset: Offset(0, 5))
        ],
      ),
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 84.0,
            height: 80.0,
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Image.asset(
              image!,
              height: 60,
              width: 60,
            ),
          ),
          const SizedBox(width: 14.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 92,
                height: 20,
                child: Text(
                  text!,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Color(0x80000000),
                    fontWeight: FontWeight.w400,
                    fontFamily: "Gordita",
                  ),
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                subtext!,
                style: const TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontFamily: "Gordita",
                ),
              ),
              //const Spacer(),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titletext!,
                style: const TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Gordita",
                  color: Color(0x80000000),
                ),
              ),
              isButton!
                  ? ElevatedButton(
                      style: ButtonStyle(
                        minimumSize:
                            MaterialStateProperty.all(const Size(00, 27)),
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xFFF67952)),
                        shape: MaterialStateProperty.all(
                          const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(41),
                            ),
                          ),
                        ),
                      ),
                      onPressed: onPress,
                      child: const Text(
                        "Add a review",
                        style: TextStyle(
                          fontSize: 10.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Gordita",
                          color: Color(0xFFFBFBFD),
                        ),
                      ))
                  : const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
