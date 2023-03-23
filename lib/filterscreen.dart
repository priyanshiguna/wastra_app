import 'package:another_xlider/another_xlider.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  double minValue = 0;
  double maxValue = 0;
  // RangeValues _priceRangeValues = RangeValues(0, 100);
  // int minPrice = 0;
  // int maxPrice = 0;

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Category",
                    style: TextStyle(
                        fontFamily: "Gordita",
                        color: Color(0xFF230A06),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
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
                  const SizedBox(height: 20),
                  FlutterSlider(
                    values: [minValue, maxValue],
                    rangeSlider: true,
                    max: 500,
                    min: 0,
                    handler: FlutterSliderHandler(
                      decoration: const BoxDecoration(
                        color: Color(0xFFF67952),
                        shape: BoxShape.circle,
                      ),
                    ),
                    trackBar: const FlutterSliderTrackBar(
                      activeTrackBar: BoxDecoration(
                        color: Color(0xFFF67952),
                      ),
                    ),
                    tooltip: FlutterSliderTooltip(
                        boxStyle: const FlutterSliderTooltipBox(
                      decoration: BoxDecoration(
                        color: Color(0xFFFBFBFD),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                    )),
                    onDragging: (handlerIndex, lowerValue, upperValue) {
                      minValue = lowerValue;
                      maxValue = upperValue;
                      debugPrint(
                          'lowerValue $lowerValue, upperValue $upperValue');
                      setState(() {});
                    },
                  ),
                  // RangeSlider(
                  //   //by default, min-max: 0-1
                  //   values: RangeValues(startval, endval),
                  //   onChanged: (RangeValues value) {
                  //     setState(() {
                  //       startval = value.start;
                  //       endval = value.end;
                  //     });
                  //   },
                  // ),
                  // RangeSlider(
                  //   min: 0,
                  //   max: 100,
                  //   divisions: 10, //slide interval
                  //   labels: RangeLabels("Rs. $startval1", "Rs. $endval1"),
                  //   values: RangeValues(startval1, endval1),
                  //   onChanged: (RangeValues value) {
                  //     setState(() {
                  //       startval1 = value.start;
                  //       endval1 = value.end;
                  //     });
                  //   },
                  // ),
                  // RangeSlider(
                  //   values: _priceRangeValues,
                  //   min: _priceRangeValues.start,
                  //   max: _priceRangeValues.end,
                  //   divisions: 100,
                  //   labels: RangeLabels(
                  //     '${_priceRangeValues.start.round().toString()} k',
                  //     '${_priceRangeValues.start.round().toString()} k',
                  //   ),
                  //   onChanged: (RangeValues values) {
                  //     print(
                  //         'price ${_priceRangeValues.start.round()}, ${_priceRangeValues.end.round()}');
                  //     _priceRangeValues = values;
                  //     minPrice = values.start.round();
                  //     maxPrice = values.end.round();
                  //     setState(() {});
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
