import 'package:flutter/material.dart';

class TextStyles {
  static const _font1 = TextStyle(fontFamily: 'Exo', color: Colors.white);

  static TextStyle get h1 => _font1.copyWith(
      fontSize: 75, letterSpacing: 35, fontWeight: FontWeight.w700);
  static TextStyle get h2 => _font1.copyWith(fontSize: 40, letterSpacing: 0);
  static TextStyle get h3 => _font1.copyWith(
      fontSize: 24, letterSpacing: 20, fontWeight: FontWeight.w400);
  static TextStyle get body => _font1.copyWith(fontSize: 16);
  static TextStyle get btnText => _font1.copyWith(
      fontSize: 16, letterSpacing: 10, fontWeight: FontWeight.bold);
}

abstract class AppColors {
  static const orbColors = [
    Color(0xff71fdbf),
    Color(0xffce33ff),
    Color(0xffff5033),
  ];

  static const emitColors = [
    Color(0xff96ff33),
    Color(0xff00ffff),
    Color(0xffff993e),
  ];
}
