import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';

class ExpandableContainer extends StatefulWidget {
  final Function callback;

  ExpandableContainer({@required this.callback});

  @override
  _ExpandableContainerState createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  double _typeAnimatedHeight = 0.0;
  double _durationAnimatedHeight = 0.0;
  int typeIndex = 0;
  int durationIndex = 0;

  void typeAnimateTile() {
    setState(() {
      _typeAnimatedHeight != 0.0 ? _typeAnimatedHeight = 0.0 : _typeAnimatedHeight = 60.0;
    });
  }

  void durationAnimateTile() {
    setState(() {
      _durationAnimatedHeight != 0.0 ? _durationAnimatedHeight = 0.0 : _durationAnimatedHeight = 60.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          color: darkBlueColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => typeAnimateTile(),
                child: Row(
                  children: [
                    Text(
                      "Select Type:",
                      style: t14_Light,
                    ),
                    Icon(
                      ((_typeAnimatedHeight == 0.0)
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up),
                      color: whiteColor,
                    )
                  ],
                ),
              ),

              InkWell(
                onTap: () => durationAnimateTile(),
                child: Row(
                  children: [
                    Text(
                      "Select Duration:",
                      style: t14_Light,
                    ),
                    Icon(
                      ((_durationAnimatedHeight == 0.0)
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up),
                      color: whiteColor,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        AnimatedContainer(
          padding: EdgeInsets.symmetric(horizontal: 10),
          duration: Duration(milliseconds: 120),
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Button(
               text: "Sent",
               textStyle: t14_Dark,
               height: 40,
               color: whiteColor,
               borderColor:
                   (typeIndex != 0) ? greyColor : greenColor,
               borderWidth: 5,
               borderRadius: 30,
               callback: () {
                 setState(() => typeIndex = 0);
                 widget.callback(typeIndex);
               },
             ),
             Button(
               text: "Received",
               textStyle: t14_Dark,
               height: 40,
               color: whiteColor,
               borderColor:
                   (typeIndex != 1) ? greyColor : greenColor,
               borderWidth: 5,
               borderRadius: 30,
               callback: () {
                 setState(() => typeIndex = 1);
                 widget.callback(typeIndex);
               },
             ),
             Button(
               text: "All",
               textStyle: t14_Dark,
               height: 40,
               color: whiteColor,
               borderColor:
                   (typeIndex != 2) ? greyColor : greenColor,
               borderWidth: 5,
               borderRadius: 30,
               callback: () {
                 setState(() => typeIndex = 2);
                 widget.callback(typeIndex);
               },
             ),
           ],
         ),
          height: _typeAnimatedHeight,
              color: Colors.grey[200],
        ),

        AnimatedContainer(
          padding: EdgeInsets.symmetric(horizontal: 10),
          duration: Duration(milliseconds: 120),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Button(
                    text: "24h",
                    textStyle: t14_Dark,
                    width: 50,
                    height: 40,
                    color: whiteColor,
                    borderColor:
                        (durationIndex != 0) ? greyColor : greenColor,
                    borderWidth: 5,
                    borderRadius: 15,
                    callback: () {
                      setState(() => durationIndex = 0);
                      widget.callback(durationIndex);
                    },
                  ),
                  Button(
                    text: "3d",
                    textStyle: t14_Dark,
                    width: 50,
                    height: 40,
                    color: whiteColor,
                    borderColor:
                        (durationIndex != 1) ? greyColor : greenColor,
                    borderWidth: 5,
                    borderRadius: 15,
                    callback: () {
                      setState(() => durationIndex = 1);
                      widget.callback(durationIndex);
                    },
                  ),
                  Button(
                    text: "7d",
                    textStyle: t14_Dark,
                    width: 50,
                    height: 40,
                    color: whiteColor,
                    borderColor:
                        (durationIndex != 2) ? greyColor : greenColor,
                    borderWidth: 5,
                    borderRadius: 15,
                    callback: () {
                      setState(() => durationIndex = 2);
                      widget.callback(durationIndex);
                    },
                  ),
                  Button(
                    text: "30d",
                    textStyle: t14_Dark,
                    width: 50,
                    height: 40,
                    color: whiteColor,
                    borderColor:
                        (durationIndex != 3) ? greyColor : greenColor,
                    borderWidth: 5,
                    borderRadius: 15,
                    callback: () {
                      setState(() => durationIndex = 3);
                      widget.callback(durationIndex);
                    },
                  ),
                  Button(
                    text: "All",
                    textStyle: t14_Dark,
                    width: 50,
                    height: 40,
                    color: whiteColor,
                    borderColor:
                        (durationIndex != 4) ? greyColor : greenColor,
                    borderWidth: 5,
                    borderRadius: 15,
                    callback: () {
                      setState(() => durationIndex = 4);
                      widget.callback(durationIndex);
                    },
                  ),
                ],
              ),
          height: _durationAnimatedHeight,
              color: Colors.grey[200],
        )
      ],
    );
  }
}
