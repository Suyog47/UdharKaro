import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:udhaarkaroapp/Constants/colors.dart';
import 'package:udhaarkaroapp/Constants/icons.dart';
import '../Constants/dividers.dart';
import '../Constants/heights.dart';
import '../Widget/circularAvatar.dart';

class UsersList extends StatefulWidget {
  @override
  _UsersListState createState() => _UsersListState();
}

class _UsersListState extends State<UsersList> {

  List _str = ["Ayush Singhal", "Babu", "Deepanshu Khanna", "Raj Ranjan", "Suyog Amin"];

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
                    Align(child: InkWell(
                        onTap: (){Navigator.pop(context);},
                        child: backIcon), alignment: Alignment.centerLeft,),

                    Height10,

                    Center(child: Text("Users List", style: TextStyle(color: whiteColor, fontSize: 30),))
                  ],
                ),
              ),

              Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index){
                        return Column(
                          children: [
                            Card(
                              child: ListTile(
                                leading: Avatar(img: "assets/profilebg.png", radius: 25,),
                                title: Text(_str[index], style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),),
                              ),
                              elevation: 0,
                              margin: EdgeInsets.symmetric(vertical: 15),
                            ),

                            divider,
                          ],
                        );
                    }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
