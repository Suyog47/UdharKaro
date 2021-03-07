import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/card.dart';
import 'package:udhaarkaroapp/widgets/circularAvatar.dart';
import 'package:udhaarkaroapp/widgets/expandableContainer.dart';

class UserDetails extends StatefulWidget {
  @override
  _UserDetailsState createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {

  int _index = 0;
  Map _data = {};

  List str = [
    {
      "type": 1,
      "price": 250,
      "date": "16/02/2021, 7:40 PM",
      "pic": "assets/profilebg.png"
    },
    {
      "type": 2,
      "price": 1200,
      "date": "10/01/2021, 7:40 PM",
      "pic": "assets/profilebg.png"
    },
    {
      "type": 2,
      "price": 750,
      "date": "17/01/2021, 7:40 PM",
      "pic": "assets/profilebg.png"
    },
    {
      "type": 1,
      "price": 100,
      "date": "10/02/2021, 7:40 PM",
      "pic": "assets/profilebg.png"
    },
    {
      "type": 1,
      "price": 450,
      "date": "10/02/2021, 7:40 PM",
      "pic": "assets/profilebg.png"
    },
  ];

  @override
  Widget build(BuildContext context) {

    _data = ModalRoute.of(context).settings.arguments;

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
                decoration: BoxDecoration(
                  color: darkBlueColor,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: backIconLight),
                    ),
                    height5,
                    Center(
                        child: Avatar(
                      img: "assets/profilebg.png",
                      radius: 45,
                    )),
                    height10,
                    Center(
                        child: Text(
                      _data["name"],
                      style: h3_Light,
                    )),
                    height10,
                    Text(
                      (_data["type"] == 1) ? "Has to gave Rs.1500" : "Has to take Rs.500",
                      style: t16_Light,
                    ),
                  ],
                ),
              ),
              ExpandableContainer(callback: (value){
                setState(() => _index = value);
                print(_index);
              },),
              Flexible(
                child: Container(
                  color: whiteColor,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: str.length,
                      itemBuilder: (context, index) {
                        return UserDetailCard(
                          str: str,
                          itemIndex: index,
                        );
                      }),
                ),
              )
            ],
          ),
        ),

        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TakeFloatingButton(
              callback: (){
                Navigate().toQRScanner(context, {"type" : 1});
              },
            ),
            GaveFloatingButton(
              callback: (){
                Navigate().toQRScanner(context, {"type" : 2});
              },
            )
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      ),
    );
  }
}
