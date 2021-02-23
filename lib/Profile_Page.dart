import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/Constants/colors.dart';
import 'Constants/heights.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                decoration: BoxDecoration(
                  color: color().darkBlueColor,
                ),
                child: Column(
                  children: [
                    Align(child: Icon(Icons.arrow_back, color: color().whiteColor, size: 30,), alignment: Alignment.centerLeft,),

                    Height10,

                    Center(
                      child: CircleAvatar(
                      backgroundImage: AssetImage("assets/profilebg.png"), radius: 45,
                      ),
                    ),

                    Height10,

                    Center(child: Text("Suyog Amin", style: TextStyle(fontWeight: FontWeight.bold, color: color().whiteColor, fontSize: 40),))
                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    InkWell(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Account Details", style: TextStyle(fontSize: 20),),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, "/accountdetails");
                      },
                    ),

                    Height10,
                    Height10,

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "/privacypolicy");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Privacy Policy", style: TextStyle(fontSize: 20)),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),

                    Height10,
                    Height10,

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "/feedbackform");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Feedback Form", style: TextStyle(fontSize: 20)),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),

                    Height10,
                    Height10,

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "/userlist");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("My Users List", style: TextStyle(fontSize: 20)),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),

                    Height10,
                    Height10,

                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, "/aboutus");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("About Us", style: TextStyle(fontSize: 20)),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),

                    Height10,
                    Height10,

                    Divider(height: 2, color: color().blackColor,),

                    Height10,
                    Height10,

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Logout", style: TextStyle(fontSize: 20)),
                        Icon(Icons.power_settings_new, color: color().redColor),
                      ],
                    )
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
