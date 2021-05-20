import 'package:flutter/material.dart';
import 'package:multex/Widgets/UpperContainer.dart';
import 'package:multex/Widgets/WhiteBox.dart';
import 'package:multex/Widgets/AppBar.dart';
import 'package:multex/Widgets/backgroundImage.dart';

class Hotel extends StatelessWidget {
  Hotel({@required this.image, @required this.name});
  final String image;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackGroundImage(image: image),
          Column(
            children: [
              Appbar(),
              UpperContainer(),
              WhiteBox(name: name),
            ],
          ),
        ],
      ),
    );
  }
}
