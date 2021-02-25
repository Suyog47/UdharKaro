import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/dividers.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/constants/widths.dart';

import 'circularAvatar.dart';


class userListCard extends StatelessWidget {

  List str;
  String pic;
  int itemIndex;

  userListCard({
    @required this.str,
    @required this.pic,
    @required this.itemIndex,
});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Card(
            child: ListTile(
              leading: Avatar(
                img: pic,
                radius: 25,
              ),
              title: Text(
                str[itemIndex],
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 19),
              ),
            ),
            elevation: 0,
            margin: EdgeInsets.symmetric(vertical: 15),
          ),
          divider,
        ],
      ),
    );
  }
}


class homeCard extends StatelessWidget {
  final List str;
  final bool status;
  final int itemIndex;

  homeCard({
    this.str,
    this.status,
    this.itemIndex
});

  @override
  Widget build(BuildContext context) {

    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("Rs.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                        Width2,
                        Text(str[itemIndex]["price"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                      ],
                    ),
                    Height5,
                    Text(str[itemIndex]["vendor"], style: TextStyle(fontSize: 12),)
                  ],
                ),
                Avatar(img: str[itemIndex]["pic"], radius: 25,),
              ],
            ),

            Height10,
            Height10,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(str[itemIndex]["lastTransaction"], style: TextStyle(fontWeight: FontWeight.bold),),
                        Height5,
                        Text("Last Transaction On", style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  ],
                ),

                (status) ?
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: lightBlue, width: 2.0),
                  ),
                  child: Row(
                    children: [
                      Text("PAY", style: TextStyle(color: lightBlue),),
                      Transform.rotate(angle: 3.142/4,  child: upArrowLightBlueIcon),
                    ],
                  ),
                ) :

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: lightGreen, width: 2.0),
                  ),
                  child: Text("ALERT", style: TextStyle(color: lightGreen),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

