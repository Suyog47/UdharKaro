import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';
import 'package:udhaarkaroapp/widgets/card.dart';


class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  List str = [
    {
      "type" : 1,
      "price" : 250,
      "name" : "Suyog Amin",
      "date" : "16/02/2021, 7:40 PM",
      "pic" : "assets/profilebg.png"
    },
    {
      "type" : 2,
      "price" : 1200,
      "name" : "Deepanshu Khanna",
      "date" : "10/01/2021, 7:40 PM",
      "pic" : "assets/profilebg.png"
    },
    {
      "type" : 2,
      "price" : 750,
      "name" : "Raj Ranjan",
      "date" : "17/01/2021, 7:40 PM",
      "pic" : "assets/profilebg.png"
    },
    {
      "type" : 1,
      "price" : 100,
      "name" : "Shubham Mohapatra",
      "date" : "10/02/2021, 7:40 PM",
      "pic" : "assets/profilebg.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
                decoration: BoxDecoration(
                  color: darkBlueColor,
                ),
                child: Column(
                  children: [
                    Center(child: Text("Notifications",
                        style: h3_Light),
                    ),
                  ],
                ),
              ),

              Container(
                color: whiteColor,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: str.length,
                    itemBuilder: (context, index){
                      return NotificationCard(
                        str: str,
                        itemIndex: index,
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
