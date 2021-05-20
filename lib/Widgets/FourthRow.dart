import 'package:flutter/material.dart';
import 'package:multex/Widgets/DropDownButton.dart';
import 'package:multex/Widgets/Incremental.dart';
import 'package:multex/Widgets/GuestRoom.dart';

class FourthRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18),
      child: Row(
        children: [
          GuestRoom(
            childWidget: IncrementalRow(),
            leftMargin: 0,
            containerName: 'Guests',
            containerWidth: 160,
          ),
          GuestRoom(
            childWidget: DropDownButton(),
            leftMargin: 13,
            containerName: 'Room Type',
            containerWidth: 150,
          ),
        ],
      ),
    );
  }
}
