import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/*
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

 */

class ScodarTheme2 {
  static const secondaryColor = Color(0xFF263238);
  static const secondaryColorDeem = Color(0x75263238);
  static const colourWhite = Colors.white;
  static const colourBlack = Colors.black;
  static const primaryColor = Color(0xFFC4C4C4);

  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        fontSize: 97,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: colourBlack),
    headline2: GoogleFonts.montserrat(
        fontSize: 61,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: colourBlack),
    headline3: GoogleFonts.montserrat(
        fontSize: 48, fontWeight: FontWeight.w400, color: colourBlack),
    headline4: GoogleFonts.montserrat(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: colourBlack),
    headline5: GoogleFonts.montserrat(
        fontSize: 24, fontWeight: FontWeight.w400, color: colourBlack),
    headline6: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: colourBlack),
    subtitle1: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: colourBlack),
    subtitle2: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: colourBlack),
    bodyText1: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: colourBlack),
    bodyText2: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: colourBlack),
    button: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: colourBlack),
    caption: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: colourBlack),
    overline: GoogleFonts.montserrat(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: colourBlack),
  );

  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        fontSize: 97,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
        color: colourWhite),
    headline2: GoogleFonts.montserrat(
        fontSize: 61,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
        color: colourWhite),
    headline3: GoogleFonts.montserrat(
        fontSize: 48, fontWeight: FontWeight.w400, color: colourWhite),
    headline4: GoogleFonts.montserrat(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: colourWhite),
    headline5: GoogleFonts.montserrat(
        fontSize: 24, fontWeight: FontWeight.w400, color: colourWhite),
    headline6: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: colourWhite),
    subtitle1: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
        color: colourWhite),
    subtitle2: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: colourWhite),
    bodyText1: GoogleFonts.montserrat(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: colourWhite),
    bodyText2: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: colourWhite),
    button: GoogleFonts.montserrat(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
        color: colourWhite),
    caption: GoogleFonts.montserrat(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: colourWhite),
    overline: GoogleFonts.montserrat(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: colourWhite),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      appBarTheme: const AppBarTheme(
        foregroundColor: secondaryColor,
        backgroundColor: primaryColor,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: primaryColor,
        backgroundColor: secondaryColor,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: secondaryColor,
        backgroundColor: primaryColor,
      ),
      textTheme: lightTextTheme,
      iconTheme: const IconThemeData(
        color: secondaryColor,
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: primaryColor,
      ),
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.grey[900],
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: secondaryColor,
        backgroundColor: primaryColor,
      ),
      textTheme: darkTextTheme,
      iconTheme: const IconThemeData(
        color: primaryColor,
      ),
      drawerTheme: const DrawerThemeData(
        backgroundColor: primaryColor,
      ),
    );
  }
}
