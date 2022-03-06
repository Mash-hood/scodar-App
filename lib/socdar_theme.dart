import 'package:flutter/material.dart';

class ScodarTheme {
  static const kPrimaryColor = Color(0xFFC4C4C4);

  static const kSecondaryColor = Color(0xFF263238);

  static TextTheme secondaryTextTheme = const TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: kSecondaryColor,
      letterSpacing: 1,
    ),
    bodyText2: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w700,
      color: Colors.blue,
    ),
    headline1: TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: kSecondaryColor,
    ),
    headline2: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: kSecondaryColor,
    ),
    headline3: TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: kSecondaryColor,
    ),
    headline6: TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w600,
      color: kSecondaryColor,
    ),
  );
}
