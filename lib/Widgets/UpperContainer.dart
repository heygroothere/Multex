import 'package:flutter/material.dart';
import 'package:multex/constants.dart';

class UpperContainer extends StatelessWidget {
  final List<String> categories = ['Room', 'Lobby', 'Resto', 'Bed', 'Bathroom'];

  List<Container> getItems() {
    List<Container> items = [];
    for (int i = 0; i < categories.length; i++) {
      String item = categories[i];
      var collection = getContaniers(item);
      items.add(collection);
    }
    return items;
  }

  Container getContaniers(item) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(left: 5, right: 5, bottom: 20),
      height: 35,
      width: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Text(
        item,
        style: TextStyle(color: kColor, fontSize: 13),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      height: 220,
      color: Colors.transparent,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 20),
            Row(children: getItems()),
            SizedBox(width: 20),
          ],
        ),
      ),
    );
  }
}
