import 'package:flutter/material.dart';
import 'package:multex/constants.dart';

class WhiteBox extends StatelessWidget {
  WhiteBox({@required this.name});
  final String name;

  final List<Widget> list = [
    Icon(Icons.wifi, color: Colors.white),
    Icon(Icons.local_pizza, color: Colors.white),
    Icon(Icons.bathtub, color: Colors.white),
    Icon(Icons.hot_tub, color: Colors.white),
    Icon(Icons.more_horiz, color: Colors.white)
  ];
  final List<String> lists = ['Wifi', 'Food', 'Gym ', 'Heater', 'More'];

  List<Widget> getContainer() {
    List<Widget> containers = [];
    for (int i = 0; i < list.length; i++) {
      String name = lists[i];
      var icon = list[i];
      var container = returnContainer(name, icon);
      containers.add(container);
    }
    return containers;
  }

  Container returnContainer(name, icon) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 5),
            height: 40,
            width: 40,
            child: icon,
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(10)),
          ),
          Text(
            name,
            style: TextStyle(color: kColorGrey),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(35),
            topLeft: Radius.circular(35),
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFF09336),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Recommended Rooms',
                    style: TextStyle(color: Color(0xFFF09336)),
                  ),
                ],
              ),
              Text(
                name,
                style: TextStyle(
                    color: kColor, fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Container(
                  child: Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: kColor,
                  ),
                  SizedBox(width: 5),
                  Text(
                    '4.5 | 123 Rewiews',
                    style: TextStyle(
                      color: kColorGrey,
                      fontSize: 16,
                    ),
                  ),
                ],
              )),
              Text(
                'Cozy rooms in the near of Depok beach. You know its recommended by most of the users in here. The Rooms will make your day Special.',
                style: TextStyle(color: kColor),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: getContainer(),
              ),
              Elevated(),
            ],
          ),
        ),
      ),
    );
  }
}

class Elevated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 15),
      child: SizedBox(
        width: 250,
        height: 55,
        child: ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(kColor),
            ),
            child: Text(
              'BOOK  FOR  \$123  NOW',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            )),
      ),
    );
  }
}
