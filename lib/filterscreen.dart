import 'package:another_xlider/another_xlider.dart';
import 'package:flutter/material.dart';

import 'common/app_button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double minValue = 0;
  double maxValue = 0;
  double minDistance = 0;
  double maxDistance = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 620,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  "Clear",
                  style: TextStyle(
                      fontFamily: "Gordita",
                      color: Color(0xFF230A06),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                const Text(
                  "Filters",
                  style: TextStyle(
                      fontFamily: "Gordita",
                      color: Color(0xFF230A06),
                      fontSize: 19,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Color(0x1F767680),
                    shape: BoxShape.circle,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Category",
                      style: TextStyle(
                          fontFamily: "Gordita",
                          color: Color(0xFF230A06),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 46,
                        width: 92.72,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF67952),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "New Arrival",
                            style: TextStyle(
                                fontFamily: "Gordita",
                                color: Color(0xFFFBFBFD),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        height: 46,
                        width: 91.7,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Top Tranding",
                            style: TextStyle(
                                fontFamily: "Gordita",
                                color: Color(0xFF141414),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Container(
                        height: 46,
                        width: 125.63,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Featured Products",
                            style: TextStyle(
                                fontFamily: "Gordita",
                                color: Color(0xFF141414),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Pricing",
                        style: TextStyle(
                            fontFamily: "Gordita",
                            color: Color(0xFF230A06),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "\$50-\$200",
                        style: TextStyle(
                            fontFamily: "Gordita",
                            color: Color(0xFF230A06),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  FlutterSlider(
                    values: [minValue, maxValue],
                    rangeSlider: true,
                    max: 300,
                    min: 0,
                    handler: FlutterSliderHandler(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF67952),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: SizedBox(),
                    ),
                    handlerHeight: 25,
                    rightHandler: FlutterSliderHandler(
                      decoration: BoxDecoration(
                        color: Color(0xFFF67952),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: SizedBox(),
                    ),
                    trackBar: const FlutterSliderTrackBar(
                      activeTrackBar: BoxDecoration(
                        color: Color(0xFFF67952),
                      ),
                    ),
                    tooltip: FlutterSliderTooltip(
                      leftPrefix: Text("\$ "),
                      rightPrefix: Text("\$ "),
                      textStyle: TextStyle(color: Colors.black),
                      boxStyle: const FlutterSliderTooltipBox(
                        decoration: BoxDecoration(
                          color: Color(0xFFFBFBFD),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Color(0xADD7D9DB),
                                spreadRadius: 0,
                                blurRadius: 12,
                                offset: Offset(0, 6))
                          ],
                        ),
                      ),
                    ),
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      minValue = lowerValue;
                      maxValue = upperValue;
                      debugPrint(
                          'lowerValue $lowerValue, upperValue $upperValue');
                      setState(() {});
                    },
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Distance",
                        style: TextStyle(
                            fontFamily: "Gordita",
                            color: Color(0xFF230A06),
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "500m-2Km",
                        style: TextStyle(
                            fontFamily: "Gordita",
                            color: Color(0xFF230A06),
                            fontSize: 12,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  FlutterSlider(
                    values: [minDistance, maxDistance],
                    rangeSlider: true,
                    max: 2000,
                    min: 0,
                    handler: FlutterSliderHandler(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF67952),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: SizedBox(),
                    ),
                    handlerHeight: 25,
                    rightHandler: FlutterSliderHandler(
                      decoration: BoxDecoration(
                        color: Color(0xFFF67952),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                      ),
                      child: SizedBox(),
                    ),
                    trackBar: const FlutterSliderTrackBar(
                      activeTrackBar: BoxDecoration(
                        color: Color(0xFFF67952),
                      ),
                    ),
                    tooltip: FlutterSliderTooltip(
                      custom: (value) => Text(value > 1000
                          ? "${(value / 1000).toStringAsFixed(2)} km"
                          : "${value.toStringAsFixed(0)}m"),
                      boxStyle: const FlutterSliderTooltipBox(
                        decoration: BoxDecoration(
                          color: Color(0xFFFBFBFD),
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Color(0xADD7D9DB),
                                spreadRadius: 0,
                                blurRadius: 12,
                                offset: Offset(0, 6))
                          ],
                        ),
                      ),
                    ),
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      minDistance = lowerValue;
                      maxDistance = upperValue;
                      setState(() {});
                    },
                  ),
                  const SizedBox(height: 120),
                  Wrap(
                    alignment: WrapAlignment.center,
                    runAlignment: WrapAlignment.center,
                    children: const [
                      AppButton(
                        title: "Apply Filter",
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
