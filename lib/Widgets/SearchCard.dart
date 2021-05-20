import 'package:flutter/material.dart';
import 'package:multex/constants.dart';

class SearchCard extends StatelessWidget {
  SearchCard(
      {@required this.image,
      @required this.hotelName,
      @required this.distance,
      @required this.feature,
      @required this.price});
  final String image;
  final String hotelName;
  final String distance;
  final String feature;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFFE9E9E9),
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          CardImage(image: image),
          CardContent(
            hotelName: hotelName,
            distance: distance,
            feature: feature,
            price: price,
          ),
        ],
      ),
    );
  }
}

class CardImage extends StatelessWidget {
  CardImage({@required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
      ),
      height: 220,
      width: 120,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(19),
          bottomLeft: Radius.circular(19),
        ),
        child: Image(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CardContent extends StatelessWidget {
  CardContent(
      {@required this.hotelName,
      @required this.distance,
      @required this.feature,
      @required this.price});
  final String hotelName;
  final String distance;
  final String feature;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(13),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                hotelName,
                style: TextStyle(
                  color: kColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                distance,
                style:
                    TextStyle(color: kColorGrey, fontWeight: FontWeight.w300),
              ),
              Text(feature,
                  style: TextStyle(
                    color: kColorGrey,
                    fontWeight: FontWeight.w300,
                  )),
              Container(
                child: Row(
                  children: [
                    StarIcon(iconName: Icons.star),
                    StarIcon(iconName: Icons.star),
                    StarIcon(iconName: Icons.star),
                    StarIcon(iconName: Icons.star),
                    StarIcon(iconName: Icons.star_half)
                  ],
                ),
              ),
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      text: '\$',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kColor),
                      children: <TextSpan>[
                        TextSpan(
                          text: price,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    '  per Night',
                    style: TextStyle(
                      color: kColorFade,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}

class StarIcon extends StatelessWidget {
  StarIcon({@required this.iconName});
  final IconData iconName;
  @override
  Widget build(BuildContext context) {
    return Icon(iconName, color: Color(0xFFF09336), size: 22);
  }
}
