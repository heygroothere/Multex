import 'package:flutter/material.dart';
import 'package:multex/constants.dart';

class GuestRoom extends StatelessWidget {
  GuestRoom(
      {@required this.childWidget,
      @required this.containerWidth,
      @required this.containerName,
      @required this.leftMargin});
  final Widget childWidget;
  final double leftMargin;
  final String containerName;
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: leftMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            containerName,
            style: TextStyle(
              fontSize: 16,
              color: kColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            width: containerWidth,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: kColorGrey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: childWidget,
          ),
        ],
      ),
    );
  }
}
