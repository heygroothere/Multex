import 'package:flutter/material.dart';
import 'package:multex/constants.dart';

class Textfield extends StatelessWidget {
  Textfield({
    this.hint,
    this.label,
  });
  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 0),
      child: TextField(
        decoration: InputDecoration(
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: kColor),
          ),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          labelText: label,
          labelStyle: TextStyle(color: kColor),
        ),
      ),
    );
  }
}
