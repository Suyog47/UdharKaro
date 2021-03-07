import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/card.dart';
import 'package:udhaarkaroapp/widgets/headers.dart';


class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  List _str = [
    {
      "type" : 1,
      "price" : 250,
      "name" : "Suyog Amin",
      "date" : "16/02/2021 - 7:40 PM",
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
        backgroundColor: whiteColor,
        body: Container(
          child: Column(
            children: [
              Header(text: "Notifications", backIcon: false),

              Flexible(
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _str.length,
                    itemBuilder: (context, index){
                      return NotificationCard(
                        str: _str,
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
