import 'package:flutter/material.dart';
import 'package:scodar_app/socdar_theme.dart';
import 'package:scodar_app/widgets/text-Field.dart';

class BuyCredit extends StatefulWidget {
  @override
  State<BuyCredit> createState() => _BuyCreditState();
}

class _BuyCreditState extends State<BuyCredit> {
  final controllerAmount = TextEditingController();
  String selectedNetwork = "MTN";

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
            Text("Select network",
                style: ScodarTheme.secondaryTextTheme.bodyText1),
            const SizedBox(height: 12),
            Row(
              children: [
                SizedBox(width: 47),
                DropdownButton<String>(
                  value: selectedNetwork,
                  icon: const Icon(Icons.arrow_drop_down_outlined),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  //   underline: Container(height: 2, color: Colors.deepPurpleAccent,),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
