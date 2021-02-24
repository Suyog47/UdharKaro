import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/dividers.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';
import 'package:udhaarkaroapp/widgets/circularAvatar.dart';

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
                  color: darkBlueColor,
                ),
                child: Column(
                  children: [
                    Height10,
                    Height10,

                    Center(
                        child: Avatar(img: "assets/profilebg.png", radius: 45,)
                    ),

                    Height10,

                    Center(child: Text("Suyog Amin", style: profileHeaderTextStyle,))
                  ],
                ),
              ),

              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Account Details", style: profileBodyTextStyle,),
                            profilePageIcon
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
                            Text("Privacy Policy", style: profileBodyTextStyle),
                            profilePageIcon
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
                            Text("Feedback Form", style: profileBodyTextStyle),
                            profilePageIcon
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
                            Text("My Users List", style: profileBodyTextStyle),
                            profilePageIcon
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
                            Text("About Us", style: profileBodyTextStyle),
                            profilePageIcon,
                          ],
                        ),
                      ),

                      Height10,
                      Height10,

                      divider,

                      Height10,
                      Height10,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Logout", style: profileBodyTextStyle),
                          profilePageLogoutIcon
                        ],
                      )
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
