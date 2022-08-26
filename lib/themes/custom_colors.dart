// ignore_for_file: constant_identifier_names
import 'dart:math';
import 'package:flutter/material.dart';

abstract class CustomColors {
  CustomColors._();
  static const Color PRIMARY = Color(0xFF00A99D);
  static const Color SURFACE = Color(0xFFEBEBEB);
  static const Color ONSURFACE = Color(0xFF09051C);
  static const Color PRIMARY_VARIANT = Color(0xFFB9E4E2);
  static const Color ERROR = Color(0xFFEB5555);
  static const Color SECONDARY = Color(0xFF808080);
  static const Color BACKGROUND = Color(0xFFFFFFFF);
  static const Color SCAFFOLD = Color(0xFFF9F9F9);
  static const Color LIGHTGREEN = Color(0xFF53E88B);
  static const Color DARKGREEN = Color(0xFF15BE77);
  static const Color ORANGE = Color(0xFFFF7C32);
  static const Color BROWN = Color(0xFFDA6317);
  static const Color MORELIGHTGREY = Color(0xFFF6F6F6);
  static const Color LIGHTGREY = Color.fromARGB(255, 255, 253, 252);
  static const Color LIGHTPINK = Color.fromARGB(255, 247, 240, 231);
  static const Color BLUE = Color.fromARGB(255, 45, 12, 226);

  static Color darker(Color c) {
    return change(c, 0.8);
  }

  static Color lighter(Color c) {
    return change(c, 1.2);
  }

  static Color change(Color c, double ratio) {
    assert(ratio > 0);
    return Color.fromARGB(
      c.alpha,
      min((c.red * ratio).round(), 0xFF),
      min((c.green * ratio).round(), 0xFF),
      min((c.blue * ratio).round(), 0xFF),
    );
  }
}
