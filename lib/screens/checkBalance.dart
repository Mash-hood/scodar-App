import 'package:flutter/material.dart';
import 'package:scodar_app/socdar_theme.dart';

class CheckBalance extends StatefulWidget {
  @override
  State<CheckBalance> createState() => _CheckBalanceState();
}

class _CheckBalanceState extends State<CheckBalance> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 210,
              decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.rectangle,
                  //  border: Border.all(width: 1),
                  borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Your MTN Pulse main bal:N792.02. You do not have Pulse bonuses. \nNEW! Enjoy 1.5GB for just N5.00. Dial \n*406**2# \nto buy. Valid for 7 days",
                        style: ScodarTheme2.lightTextTheme.bodyText1,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      Text("ok", style: ScodarTheme2.lightTextTheme.bodyText2),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: <Widget>[
                const SizedBox(width: 19),
                Expanded(
                  child: Container(
                    height: 162,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 2),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50))),
                    child: Center(
                        child: Text(
                      "SIM 1",
                      style: ScodarTheme2.lightTextTheme.headline3,
                    )),
                  ),
                ),
                const SizedBox(width: 2),
                Expanded(
                  child: Container(
                    height: 162,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 2),
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50))),
                    child: Center(
                        child: Text("SIM 2",
                            style: ScodarTheme2.lightTextTheme.headline3)),
                  ),
                ),
                const SizedBox(width: 19),
              ],
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
