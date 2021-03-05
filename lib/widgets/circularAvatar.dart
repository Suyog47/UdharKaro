import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {

  final String img;
  final double radius;
  Avatar({
    @required this.img,
    this.radius = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        backgroundImage: AssetImage(img), radius: radius,
      ),
    );
  }
}




