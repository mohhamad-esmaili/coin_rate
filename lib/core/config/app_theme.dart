import 'package:coin_rate/core/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xff141414),
    primaryColor: const Color(0xffedbe66),
    fontFamily: FontFamily.samim,
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 16,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
