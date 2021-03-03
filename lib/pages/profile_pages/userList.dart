import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/card.dart';
import 'package:udhaarkaroapp/widgets/headers.dart';

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {
  List _str = [
    "Ayush Singhal",
    "Babu",
    "Deepanshu Khanna",
    "Raj Ranjan",
    "Suyog Amin",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Container(
          child: Column(
            children: [
              Header(text: "User List", backIcon: true),

              Flexible(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: ListView.builder(
                      //scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: _str.length,
                      itemBuilder: (context, index){
                        return UserListCard(
                          str: _str,
                          pic: "assets/profilebg.png",
                          itemIndex: index,
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

