import 'package:flutter/material.dart';
import 'package:scodar_app/socdar_theme.dart';
import 'dart:math';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 60,
            ),
            Text("Place the camera over the voucher",
                style: ScodarTheme2.lightTextTheme.bodyText1),
            const SizedBox(height: 10),
            //stacking should work instead of this, show decorated paint when light is on
            Container(
              //transform: Matrix4.rotationZ(pi / 4),
              decoration: BoxDecoration(color: Colors.white60),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 270,
                    height: 52,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                ],
              ),
            ),
            const Icon(Icons.highlight, size: 55),
            const SizedBox(
              height: 5,
            ),
            Text("Press the touch for more light",
                style: ScodarTheme2.lightTextTheme.bodyText1),
          ],
        ),
      ),
    );
  }
}
