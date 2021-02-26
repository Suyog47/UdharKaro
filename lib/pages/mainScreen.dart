import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/pages/homePage.dart';
import 'package:udhaarkaroapp/pages/notifications.dart';
import 'package:udhaarkaroapp/pages/profilePage.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: (_currentIndex == 0)
            ? Home()
            : (_currentIndex == 1) ? Notifications() : ProfilePage(),

        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          ),
          width: MediaQuery.of(context).devicePixelRatio,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  setState(() => _currentIndex = 0);
                },
                child: (_currentIndex == 0)
                    ? Transform.scale(
                        scale: 1.4,
                        child: Icon(
                          Icons.home,
                          color: redColor,
                        ))
                    : Icon(
                        Icons.home,
                        color: blackColor,
                      ),
              ),
              InkWell(
                  onTap: () {
                    setState(() => _currentIndex = 1);
                  },
                  child: (_currentIndex == 1)
                      ? Transform.scale(
                          scale: 1.4,
                          child: Icon(
                            Icons.add_alert,
                            color: redColor,
                          ))
                      : Icon(
                          Icons.add_alert,
                          color: blackColor,
                        )),
              InkWell(
                  onTap: () {
                    setState(() => _currentIndex = 2);
                  },
                  child: (_currentIndex == 2)
                      ? Transform.scale(
                          scale: 1.4,
                          child: Icon(
                            Icons.account_circle,
                            color: redColor,
                          ))
                      : Icon(
                          Icons.account_circle,
                          color: blackColor,
                        )),
            ],
          ),
        ),
      ),
    );
  }
}
