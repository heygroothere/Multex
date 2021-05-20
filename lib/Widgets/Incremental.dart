import 'package:flutter/material.dart';
import 'package:multex/constants.dart';


class IncrementalRow extends StatefulWidget {
  @override
  _IncrementalRowState createState() => _IncrementalRowState();
}

class _IncrementalRowState extends State<IncrementalRow> {
  String a = '5';

  void decrement() {
    if (int.parse(a) > 1) {
      int b = int.parse(a);
      b--;
      setState(() {
        a = b.toString();
      });
    }
  }

  void increment() {
    if (int.parse(a) < 10) {
      int b = int.parse(a);
      b++;
      setState(() {
        a = b.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButton(
        icon: Icon(
          Icons.remove,
          color: kColor,
        ),
        onPressed: () {
          decrement();
        },
      ),
      Text(
        a,
        style: TextStyle(color: kColor, fontSize: 20),
      ),
      IconButton(
        icon: Icon(Icons.add, color: kColor),
        onPressed: () {
          increment();
        },
      ),
    ]);
  }
}
