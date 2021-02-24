import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {

  final String img;
  final double radius;
  Avatar({
    @required this.img,
    @required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        backgroundImage: AssetImage(img), radius: radius,
      ),
    );
  }
}




