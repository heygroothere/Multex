import 'package:flutter/material.dart';
import 'package:multex/constants.dart';

class Elevatedbutton extends StatelessWidget {
  Elevatedbutton({this.routName, this.text});
  final String routName;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      margin: EdgeInsets.only(top: 20),
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, routName);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(kColor),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          )),
    );
  }
}
