import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/dividers.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';
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
                style: profileBodyTextStyle,
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
  final int type;
  final int itemIndex;

  homeCard({
    this.str,
    this.type,
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
                        width2,
                        Text(str[itemIndex]["price"], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                      ],
                    ),
                    height5,
                    Text(str[itemIndex]["vendor"], style: TextStyle(fontSize: 12),)
                  ],
                ),
                Avatar(img: str[itemIndex]["pic"], radius: 25,),
              ],
            ),

            height10,
            height10,

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(str[itemIndex]["lastTransaction"], style: TextStyle(fontWeight: FontWeight.bold),),
                        height5,
                        Text("Last Transaction On", style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  ],
                ),

                (type == 1) ?
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 9),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: lightBlueColor, width: 2.0),
                  ),
                  child: Row(
                    children: [
                      Text("PAY", style: TextStyle(color: lightBlueColor),),
                      Transform.rotate(angle: 3.142/4,  child: upArrowLightBlueIcon),
                    ],
                  ),
                ) :

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: lightGreenColor, width: 2.0),
                  ),
                  child: Text("ALERT", style: TextStyle(color: lightGreenColor),),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


class notificationCard extends StatelessWidget {

  List str;
  int itemIndex;

  notificationCard({
    this.str,
    this.itemIndex
    });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 10),
        elevation: 0,
        child: ListTile(
          leading: Avatar(img: str[itemIndex]["pic"], radius: 25,),

          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (str[itemIndex]["type"] == 1) ? Text("To", style: TextStyle(fontSize: 14),) : Text("From", style: TextStyle(fontSize: 14),),
              Text(str[itemIndex]["name"], style: profileBodyTextStyle,),
              height5,
            ],),

          subtitle: Text(str[itemIndex]["date"], style: TextStyle(color: greyColor),),

          trailing:
          (str[itemIndex]["type"] == 1) ?
          Text("- Rs."+str[itemIndex]["price"].toString(), style: minusPriceTextStyle,) :
          Text("+ Rs."+str[itemIndex]["price"].toString(), style: plusPriceTextStyle,),
        ),
      ),
    );
  }
}


