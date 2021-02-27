import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/card.dart';

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
    "Suyog Amin"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Container(
          child: Column(
            children: [
              Container(
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
                      "Users List",
                      style: h3_Light,
                    ))
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return UserListCard(
                        str: _str,
                        pic: "assets/profilebg.png",
                        itemIndex: index,
                      );
                    })
              )
            ],
          ),
        ),
      ),
    );
  }
}
