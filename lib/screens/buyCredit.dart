import 'package:flutter/material.dart';
import 'package:scodar_app/socdar_theme.dart';
import 'package:scodar_app/widgets/text-Field.dart';

class BuyCredit extends StatefulWidget {
  @override
  State<BuyCredit> createState() => _BuyCreditState();
}

class _BuyCreditState extends State<BuyCredit> {
  int? amount;
  final controllerAmount = TextEditingController();
  String? selectedNetwork;

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed.
    controllerAmount.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(height: 120),
            Text("Please enter an amount to \npurchase",
                style: ScodarTheme.secondaryTextTheme.headline3,
                textAlign: TextAlign.center),
            const SizedBox(height: 25),
            SizedBox(
              height: 52,
              width: 270,
              child: TextFieldWidget(
                  label: "Amount in Naira", cont: controllerAmount),
            ),
            const SizedBox(height: 53),
            Text(
              "Select network",
              style: ScodarTheme.secondaryTextTheme.bodyText1,
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 20),
            ButtonBar(
              buttonHeight: 47,
              children: <Widget>[
                Container(
                  height: 47,
                  // width: 146,
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: ScodarTheme.kSecondaryColor, width: 1),
                  ),
                  child: DropdownButton<String>(
                    value: selectedNetwork,
                    icon: const Icon(Icons.arrow_drop_down_outlined),
                    elevation: 16,
                    style: ScodarTheme.secondaryTextTheme.bodyText1,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedNetwork = newValue!;
                      });
                    },
                    hint: const Text("Pick network"),
                    items: <String>['MTN', 'Globacom', 'Airtel', '9mobile']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(width: 5),
                Container(
                  height: 47,
                  width: 100,
                  // padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ScodarTheme.kSecondaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: ScodarTheme.kSecondaryColor, width: 1),
                  ),
                  child: const ElevatedButton(
                      // style: ButtonStyle(backgroundColor: Colors.black),
                      onPressed: null,
                      child: Text(
                        "send",
                        style: TextStyle(color: ScodarTheme.kPrimaryColor),
                      )),
                ),
                const SizedBox(width: 45)
              ],
            )
          ],
        ),
      ),
    );
  }
}
