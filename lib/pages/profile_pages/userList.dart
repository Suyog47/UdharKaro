import 'dart:async';

import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/api/user-api.dart';
import 'package:udhaarkaroapp/apiClass/user.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';
import 'package:udhaarkaroapp/widgets/card.dart';

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {

  List<user> _users;
  List _str;
  Timer timer;

  @override
  void initState() {
    super.initState();
    _users = [];
    _getClients();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => _getClients());
  }

  @override
  void dispose() {
    super.dispose();
    timer?.cancel();
  }

  _getClients() {
    UserApi.getUsers().then((usersAll) {
      setState(() {
        _users = usersAll;
        _str = _users.map((e) => e.name).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                          child: backIcon),
                      alignment: Alignment.centerLeft,
                    ),
                    Height10,
                    Center(
                        child: Text(
                          "Users List",
                          style: profileHeaderTextStyle,
                        ))
                  ],
                ),
              ),

              _str!=null? Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: _str.length,
                        itemBuilder: (context, index){
                          return userListCard(
                            pic: "assets/profilebg.png",
                            str: _str,
                            itemIndex: index,
                          );
                        })
                ),
              ) : Center(child: CircularProgressIndicator(),)
            ],
          ),
        ),
      ),
    );
  }
}

