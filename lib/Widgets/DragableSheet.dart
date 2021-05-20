import 'package:flutter/material.dart';
import 'package:multex/constants.dart';
import 'package:multex/Widgets/TextField.dart';
import 'package:multex/Widgets/FourthRow.dart';

class DragableSheet extends StatelessWidget {
  const DragableSheet({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
        initialChildSize: 0.3,
        minChildSize: 0.2,
        maxChildSize: 0.85,
        builder: (BuildContext context, ScrollController scrollController) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                )),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.maximize_rounded,
                      color: Colors.grey,
                      size: 50,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 17, right: 20),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          //margin: EdgeInsets.only(left: 20),
                          child: Text(
                            'Search Rooms',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: kColor),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 5),
                          child: Text(
                            'Find Rooms based on what do you want and need',
                            style: TextStyle(color: kColor),
                          ),
                        ),
                        Container(
                          //width: 300,
                          child: Textfield(
                            label: 'Destination',
                          ),
                        ),
                        Row(children: [
                          Container(
                            // margin: EdgeInsets.only(left: 25),
                            width: 160,
                            child: Textfield(
                              label: 'Date Comming',
                              hint: '23 Oct 2019',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 13),
                            width: 150,
                            child: Textfield(
                              label: 'Duration',
                              hint: '1 Nights',
                            ),
                          )
                        ]),
                        FourthRow(),
                        SizedBox(
                          height: 17,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: 180,
                              height: 50,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/fifth');
                                  },
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(22),
                                      ),
                                    ),
                                    backgroundColor:
                                        MaterialStateProperty.all(kColor),
                                  ),
                                  child: Text(
                                    'Search',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 50,
                            child: Divider(thickness: 1, color: kColorGrey)),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Promo this Month',
                                style: TextStyle(
                                    color: kColor,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(Icons.arrow_forward_ios_rounded,
                                  color: kColorGrey, size: 20)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
