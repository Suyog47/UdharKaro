import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';


class EmptyScreen extends StatelessWidget {

  final String text;
  EmptyScreen({this.text = "Nothing Here"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/no-data.png"), height: 100, width: 100,),
            Text(text, style: TextStyle(fontSize: 15, letterSpacing: 2, fontWeight: FontWeight.bold)),
            height30,
          ],
        ),
      ),
    );
  }
}
