import 'package:flutter/material.dart';
import 'package:scodar_app/screens/screens.dart';
import 'package:scodar_app/socdar_theme.dart';

void main() {
  runApp(const ScodarApp());
}

class ScodarApp extends StatelessWidget {
  const ScodarApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = ScodarTheme2.light();
    return MaterialApp(
      title: 'Scodar Mobile Application',
      debugShowCheckedModeBanner: false,
      theme: theme,

      /*theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
              primary: ScodarTheme.kPrimaryColor,
              secondary: ScodarTheme.kSecondaryColor)),
      */

      routes: {
        '/': (context) => const MyHomePage(title: "SCODAR"),
        '/mainscreen': (context) => MainScreen(),
        '/checkbalance': (context) => CheckBalance(),
        '/buycredit': (context) => BuyCredit(),
        '/history': (context) => History(),
        '/shareapp': (context) => ShareApp(),
        '/setting': (context) => Settings(),
      },
    );
  }
}
