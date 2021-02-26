import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/widgets/circularAvatar.dart';



// ignore: camel_case_types
class gaveAmount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: blackColor,
                  ),
                ),
              ),
              Height30,
              Avatar(
                img: "assets/profilebg.png",
                radius: 45,
              ),
              height10,
              Text(
                'Giving to',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 20),
              ),
              Text(
                'Suyog Amin',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
              ),
              Height60,
              Text(
                'Rs.',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
              ),
              Text(
                '1200',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 80),
              ),
              Height30,
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.black12,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top:5.0,bottom: 5,left: 10,right: 10),
                    child: Text("Add to Description",
                      style: TextStyle(color: blackColor,
                          fontSize: 20,fontWeight: FontWeight.w500
                      ),
                    ),
                  ),
                ),
              ),
              Height60,
              GestureDetector(
                onTap: (){

                },
                child: CircleAvatar(
                  backgroundColor: lightBlueColor,
                  radius: 30,
                  child: Icon(Icons.arrow_forward_sharp,color: whiteColor,
                    size: 40,
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