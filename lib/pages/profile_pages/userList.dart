import 'dart:async';

import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/api/user.dart';
import 'package:udhaarkaroapp/apiClass/user-api.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/card.dart';
import 'package:udhaarkaroapp/widgets/headers.dart';

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {

  List<user> _users;
  // List _str;
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
        // _str = _users.map((e) => e.name).toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: Container(
          child: Column(
            children: [
              Header(text: "User List"),

              // Flexible(
              //   child: Container(
              //     padding: EdgeInsets.symmetric(horizontal: 10),
              //     child: ListView.builder(
              //       //scrollDirection: Axis.vertical,
              //         shrinkWrap: true,
              //         itemCount: _users.length,
              //         itemBuilder: (context, index){
              //           return UserListCard(
              //             str: _users,
              //             itemIndex: index,
              //           );
              //         }),
              //   ),
              // ),

              _users!=null? Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: _users.length,
                        itemBuilder: (context, index){
                          return UserListCard(
                            str: _users,
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