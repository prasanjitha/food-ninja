import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_ninja/grocery/sc/onboard/onboard_screen_one.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardScreenOne(),
        ),
      ),
    );
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Image.asset(
        'assets/grocery/Splash-5.png',
        width: size.width,
        height: size.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
