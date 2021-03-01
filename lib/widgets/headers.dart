import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';

class Header extends StatelessWidget {
  final String text;

  Header({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        color: darkBlueColor,
      ),
      child: Column(
        children: [
          Align(
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: backIconLight),
            alignment: Alignment.centerLeft,
          ),
          height10,
          Center(
            child: Text(
              text,
              style: h3_Light,
            ),
          )
        ],
      ),
    );
  }
}
