import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';

class ExpandableContainer extends StatefulWidget {

  final Function callback;

  ExpandableContainer({ @required this.callback});

  @override
  _ExpandableContainerState createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {

  double _animatedHeight = 0.0;
  int typeIndex = 0;
  int durationIndex = 0;

  void animateTile() {
    setState(() {
      _animatedHeight != 0.0 ? _animatedHeight = 0.0 : _animatedHeight = 140.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: () => animateTile(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text(
                    "View All",
                    style: t16_Light,
                  ),
                  Icon(
                    ((_animatedHeight == 0.0)
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up), color: whiteColor,)
                ],
              ),
              color: darkBlueColor,
              width: MediaQuery.of(context).size.width,
              height: 40,
            ),
          ),
          AnimatedContainer(
            padding: EdgeInsets.symmetric(horizontal: 10),
            duration: const Duration(milliseconds: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Select Type:", style: t16_Dark,),
                height2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                      text: "Sent",
                      textStyle: t14_Dark,
                      height: 40,
                      color: whiteColor,
                      borderColor: (typeIndex != 0) ? greyColor : greenColor,
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
                      borderColor: (typeIndex != 1) ? greyColor : greenColor,
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
                      borderColor: (typeIndex != 2) ? greyColor : greenColor,
                      borderWidth: 5,
                      borderRadius: 30,
                      callback: () {
                        setState(() => typeIndex = 2);
                        widget.callback(typeIndex);
                      },
                    ),
                  ],
                ),

                height5,
                Text("Duration:", style: t16_Dark),

                height2,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Button(
                      text: "24h",
                      textStyle: t14_Dark,
                      width: 50,
                      height: 40,
                      color: whiteColor,
                      borderColor: (durationIndex != 0) ? greyColor : greenColor,
                      borderWidth: 5,
                      borderRadius: 30,
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
                      borderColor: (durationIndex != 1) ? greyColor : greenColor,
                      borderWidth: 5,
                      borderRadius: 30,
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
                      borderColor: (durationIndex != 2) ? greyColor : greenColor,
                      borderWidth: 5,
                      borderRadius: 30,
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
                      borderColor: (durationIndex != 3) ? greyColor : greenColor,
                      borderWidth: 5,
                      borderRadius: 30,
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
                      borderColor: (durationIndex != 4) ? greyColor : greenColor,
                      borderWidth: 5,
                      borderRadius: 30,
                      callback: () {
                        setState(() => durationIndex = 4);
                        widget.callback(durationIndex);
                      },
                    ),
                  ],
                ),
              ],
            ),
            height: _animatedHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: Colors.grey[200]),
          )
        ],
      ),
    );
  }
}

