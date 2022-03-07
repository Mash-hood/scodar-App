import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// This is for constructing the TextFields

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {Key? key,
      @required this.label,
      @required this.cont,
      this.validator = false})
      : super(key: key);

  final String? label;
  final TextEditingController? cont;
  final bool validator;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      style: const TextStyle(color: Colors.black, fontSize: 16),
      decoration: InputDecoration(
        errorText: validator ? "Required" : null,
        labelText: label,
        enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            borderSide: BorderSide(color: Colors.black, width: 2)),
      ),
      controller: cont,
    );
  }
}
