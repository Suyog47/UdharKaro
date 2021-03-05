import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/pages/pages.dart';

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
            : (_currentIndex == 1)
                ? Notifications()
                : ProfilePage(),

          bottomNavigationBar: CurvedNavigationBar(
            color: whiteColor,
            backgroundColor: lightGreyColor,
            buttonBackgroundColor: redColor,
            height: 50,
            animationDuration: Duration(milliseconds: 400),
            items: [
              Icon(Icons.home),
              Icon(MdiIcons.bellRing),
              Icon(Icons.account_circle)
            ],
            onTap: (index){
              setState(() => _currentIndex = index);
            },
          )
      ),
    );
  }
}
