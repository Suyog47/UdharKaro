import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/card.dart';

class CustomTabBar extends StatelessWidget {

  final List str;
  final int type;

  CustomTabBar({this.str, this.type});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Text("Taken", style: h4_Dark,),
                Text("Given", style: h4_Dark,),
              ],
            ),
          ),
          body: TabBarView(
              children: [
                backIconDark,
                upArrowLightBlueIcon,
//                ListView.builder(
//                    scrollDirection: Axis.vertical,
//                    itemCount: str.length,
//                    shrinkWrap: true,
//                    itemBuilder: (context, index) {
//                      return HomeCard(
//                        type: type,
//                        str: str,
//                        itemIndex: index,
//                      );
//                    }),
              ]),
        )
    );
  }
}
