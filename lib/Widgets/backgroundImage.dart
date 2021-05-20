import 'package:flutter/material.dart';

class BackGroundImage extends StatelessWidget {
  BackGroundImage({@required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(image),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.cover,
    );
  }
}
