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
  int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: (_currentIndex == 0)
            ? Notifications()
            : (_currentIndex == 1)
                ? Home()
                : ProfilePage(),

          bottomNavigationBar: CurvedNavigationBar(
            color: Colors.grey[200],
            backgroundColor: Colors.transparent,
            buttonBackgroundColor: lightOrangeColor,
            height: 50,
            index: _currentIndex,
            animationDuration: Duration(milliseconds: 400),
            items: [
              Icon(MdiIcons.bellRing),
              Icon(Icons.home),
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
