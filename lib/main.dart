import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const OnBoardingScreen(),
      //home: const OrderCompleteScreen(),
      home: const HomePageScreen(),
      //  home: const CartScreen(),
      // home: const OnBoardingScreen(),
    );
  }
}
