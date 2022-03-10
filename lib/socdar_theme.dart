import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScodarTheme {
  static const kPrimaryColor = Color(0xFFC4C4C4);

  static const kSecondaryColor = Color(0xFF263238);

  static const kSecondaryColorDeem = Color(0x75263238);

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

class ScodarTheme2 {
  static TextTheme BlackTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        fontSize: 97,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: Colors.black),
    headline2: GoogleFonts.montserrat(
        fontSize: 61,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: Colors.black),
    headline3: GoogleFonts.montserrat(
        fontSize: 48, fontWeight: FontWeight.w400, color: Colors.black),
    headline4: GoogleFonts.montserrat(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: Colors.black),
    headline5: GoogleFonts.montserrat(
        fontSize: 24, fontWeight: FontWeight.w400, color: Colors.black),
    headline6: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: Colors.black),
    subtitle1: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: Colors.black),
    subtitle2: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: Colors.black),
    bodyText1: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: Colors.black),
    bodyText2: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: Colors.black),
    button: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: Colors.black),
    caption: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: Colors.black),
    overline: GoogleFonts.montserrat(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: Colors.black),
  );
}
