import 'package:flutter/material.dart';

class LoginOne extends StatefulWidget {
  const LoginOne({Key? key}) : super(key: key);

  @override
  State<LoginOne> createState() => _LoginOneState();
}

class _LoginOneState extends State<LoginOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                // Container(
                //     margin: const EdgeInsets.only(top: 30),
                //     height: 676,
                //     width: double.infinity,
                //     decoration: const BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.only(
                //           topRight: Radius.circular(20),
                //           topLeft: Radius.circular(20)),
                //     )),
                Container(
                  height: 48,
                  width: 343,
                  decoration: BoxDecoration(
                      color: const Color(0xffC5C2C2),
                      borderRadius: BorderRadius.circular(8)),
                ),
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    height: 676,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20)),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Icon(
//                     Icons.arrow_back_ios,
//                     color: Color(0xFF031A2E),
//                     size: 26,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50,
//                 ),
//                 Text(
//                   "Go to service",
//                   style: TextStyle(
//                     fontSize: 12,
//                     fontFamily: "Poppins",
//                     color: Color(0xFF031A2E),
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 85,
//                 ),
//               ],
//             ),
//             Padding(
//               padding: const EdgeInsets.all(10),
//               child: Container(
//                 height: 88,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                     color: Colors.grey,
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(10),
//                     )),
//                 child: Column(
//                   children: [
//                     Row(
//                       children: [
//                         SizedBox(
//                           child: Image.asset(
//                             "assets/images/pointer.png",
//                             width: 16,
//                             height: 16,
//                           ),
//                         ),
//                         const SizedBox(
//                           child: Text(
//                             "Brimingham City",
//                             style: TextStyle(
//                                 fontSize: 12,
//                                 fontFamily: "Poppins",
//                                 fontWeight: FontWeight.w400),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         SizedBox(
//                           child: Image.asset(
//                             "assets/images/pointer.png",
//                           ),
//                         ),
//                         const SizedBox(
//                           child: Text(
//                             "Brimingham City",
//                             style: TextStyle(
//                                 fontSize: 15,
//                                 fontFamily: "Poppins",
//                                 fontWeight: FontWeight.w400),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               height: 238,
//               width: 343,
//               color: Colors.yellow,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
