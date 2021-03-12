import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
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
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  color: darkBlueColor,
                ),
                child: Column(
                  children: [
                    height10,
                    height10,
                    Center(
                        child: Avatar(
                      img: "assets/profilebg.png",
                          radius: 45,
                    )),
                    height10,
                    Center(
                        child: Text(
                      "Suyog Amin",
                      style: h2_Light,
                    ))
                  ],
                ),
              ),
              height10,
              height10,
              Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Profile Details",
                                style: t22_Dark,
                              ),
                              profilePageIcon
                            ],
                          ),
                          onTap: () {
                            Navigate().toAccountDetails(context);
                          },
                        ),
                        height30,
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "/privacypolicy");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Privacy Policy",
                                style: t22_Dark,
                              ),
                              profilePageIcon
                            ],
                          ),
                        ),
                        height30,
                        InkWell(
                          onTap: () {
                            Navigate().toFeedback(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "FeedBackForm",
                                style: t22_Dark,
                              ),
                              profilePageIcon
                            ],
                          ),
                        ),
                        height30,
                        InkWell(
                          onTap: () {
                            Navigate().toUserList(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "My Users List",
                                style: t22_Dark,
                              ),
                              profilePageIcon
                            ],
                          ),
                        ),
                        height30,
                        InkWell(
                          onTap: () {
                            Navigate().toAboutUs(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "About Us",
                                style: t22_Dark,
                              ),
                              profilePageIcon,
                            ],
                          ),
                        ),
                        height10,
                        height5,
                        divider,
                        height10,
                        height5,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Text(
                                "Logout",
                                style: TextStyle(fontSize: 22, color: redColor),
                              ),
                              onTap: (){

                              },
                            ),
                            Icon(MdiIcons.logout)
                          ],
                        )
                      ],
                    ),
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
