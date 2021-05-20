import 'package:flutter/material.dart';
import 'package:multex/constants.dart';
import 'package:multex/Widgets/SearchCard.dart';
import 'package:multex/screens/hotel.dart';

class Searches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.only(left: 20),
            height: 100,
            child: Text(
              'Searches',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Container(
                padding: EdgeInsets.only(top: 30, right: 30, left: 30),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Hotel(
                                image: 'hotel_images/hotel1.jpg',
                                name: 'Sakartaji Rooms',
                              ),
                            ),
                          );
                        },
                        child: SearchCard(
                          image: 'hotel_images/hotel1.jpg',
                          hotelName: 'Sakartaji Rooms',
                          distance: '1.5 kilometer from here',
                          feature: 'Cozy Rooms in the near of depook beach',
                          price: '124',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Hotel(
                                image: 'hotel_images/hotel2.jpg',
                                name: 'Gustavo hotel',
                              ),
                            ),
                          );
                        },
                        child: SearchCard(
                            image: 'hotel_images/hotel2.jpg',
                            hotelName: 'Gustavo hotel',
                            distance: '2.5 kilometer from here',
                            feature: 'Best hotel in reasonable price',
                            price: '399'),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Hotel(
                                image: 'hotel_images/hotel3.jpg',
                                name: 'Turkish Rooms',
                              ),
                            ),
                          );
                        },
                        child: SearchCard(
                          image: 'hotel_images/hotel3.jpg',
                          hotelName: 'Turkish Rooms',
                          distance: '3 kilometer from here',
                          feature: 'You need nothing after joining us',
                          price: '255',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Hotel(
                                image: 'hotel_images/hotel4.jpg',
                                name: 'Mehdi Hotels',
                              ),
                            ),
                          );
                        },
                        child: SearchCard(
                          image: 'hotel_images/hotel4.jpg',
                          hotelName: 'Mehdi Hotels',
                          distance: '1 kilometer fom here',
                          feature: 'The best hotel in the world',
                          price: '500',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Hotel(
                                image: 'hotel_images/hotel5.jpg',
                                name: 'Sakartaji Rooms',
                              ),
                            ),
                          );
                        },
                        child: SearchCard(
                          image: 'hotel_images/hotel5.jpg',
                          hotelName: 'Sakartaji Rooms',
                          distance: '1.5 kilometer from here',
                          feature: 'best in resonable price with 4 rooms',
                          price: '220',
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Hotel(
                                image: 'images/gps.jpg',
                                name: 'Nakam Ashiq',
                              ),
                            ),
                          );
                        },
                        child: SearchCard(
                          image: 'images/gps.jpg',
                          hotelName: 'Nakam Ashiq',
                          distance: 'no dictance just with you in a car',
                          feature: 'just a gps picture to attract you',
                          price: '130',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
