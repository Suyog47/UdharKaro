import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';

class Header extends StatelessWidget {
  final String text;
  final bool backIcon;

  Header({this.text, this.backIcon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        color: darkBlueColor,
      ),
      child: Column(
        children: [
          (backIcon)
              ? Align(
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: backIconLight),
                  alignment: Alignment.centerLeft,
                )
              : Text(""),
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
