import 'package:flutter/material.dart';
import 'package:multex/constants.dart';
import 'package:multex/Widgets/DragableSheet.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.menu, size: 30),
          onPressed: () {
            //Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 6),
            child: Image(
              image: AssetImage(
                'images/icon.png',
              ),
              height: 35,
              width: 30,
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 10, right: 60),
              child: Text(
                'Roomzy',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),
          Container(
            margin: EdgeInsets.only(right: 15, top: 4),
            child: CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage(
                'images/avatar.jpg',
              ),
            ),
          ),
        ],
      ),
      backgroundColor: kColor,
      body: Stack(
        children: [
          Image(
            image: AssetImage('images/robot.jpeg'),
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox.expand(
            child: DragableSheet(),
          ),
        ],
      ),
    );
  }
}
