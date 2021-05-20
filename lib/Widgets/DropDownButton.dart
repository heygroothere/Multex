import 'package:flutter/material.dart';
import 'package:multex/constants.dart';

class DropDownButton extends StatefulWidget {
  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  List<String> elements = [
    'Exclusive',
    'Luxury',
    'king Bed',
    'Queen',
    'Double'
  ];
  String current = 'Exclusive';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: DropdownButton<String>(
        underline: Container(),
        iconSize: 30,
        items: elements.map((String dropDownStringItem) {
          return DropdownMenuItem<String>(
              value: dropDownStringItem, child: Text(dropDownStringItem));
        }).toList(),
        onChanged: (String newValue) {
          setState(() {
            current = newValue;
          });
        },
        value: current,
        style: TextStyle(
          color: kColor,
        ),
        iconEnabledColor: kColor,
      ),
    );
  }
}
