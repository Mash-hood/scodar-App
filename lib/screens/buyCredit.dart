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
  bool multipleNetworks =
      true; // for different layout composition for single and double sim cards

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
                style: ScodarTheme2.lightTextTheme.subtitle1,
                textAlign: TextAlign.center),
            const SizedBox(height: 25),
            SizedBox(
              height: 52,
              width: 270,
              child: TextFieldWidget(
                  label: "Amount in Naira", cont: controllerAmount),
            ),
            const SizedBox(height: 53),
            SizedBox(
              width: 270,
              height: 20,
              child: multipleNetworks
                  ? Text(
                      "Select network",
                      style: ScodarTheme2.lightTextTheme.bodyText1,
                      textAlign: TextAlign.start,
                    )
                  : null,
            ),
            const SizedBox(height: 20),
            ButtonBar(
              buttonHeight: 47,
              children: <Widget>[
                multipleNetworks
                    ? Container(
                        height: 47,
                        // width: 146,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                              color: ScodarTheme2.secondaryColor, width: 1),
                        ),
                        child: DropdownButton<String>(
                          value: selectedNetwork,
                          icon: const Icon(Icons.arrow_drop_down_outlined),
                          elevation: 16,
                          style: ScodarTheme2.lightTextTheme.button,
                          onChanged: (String? newValue) {
                            setState(() {
                              selectedNetwork = newValue!;
                            });
                          },
                          hint: Text(
                            "Pick network",
                            style: ScodarTheme2.lightTextTheme.button,
                          ),
                          items: <String>[
                            'MTN',
                            'Globacom',
                            'Airtel',
                            '9mobile'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      )
                    : const SizedBox(height: 47, width: 146),
                const SizedBox(width: 5),
                Container(
                  height: 47,
                  width: 100,
                  // padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: ScodarTheme2.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: ScodarTheme2.secondaryColor, width: 1),
                  ),
                  child: ElevatedButton(
                    // style: ButtonStyle(backgroundColor: Colors.black),
                    onPressed:
                        null, // method to be implemented during the backend part
                    child: Text(
                      "send",
                      style: ScodarTheme2.darkTextTheme.button,
                    ),
                  ),
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
