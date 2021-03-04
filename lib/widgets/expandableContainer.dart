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
  int index = 0;

  void animateTile() {
    setState(() {
      _animatedHeight != 0.0 ? _animatedHeight = 0.0 : _animatedHeight = 60.0;
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
              height: 30,
            ),
          ),
          AnimatedContainer(
            padding: EdgeInsets.symmetric(horizontal: 10),
            duration: const Duration(milliseconds: 120),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SmallButton(
                  text: "Sent",
                  borderColor: (index != 0) ? greyColor : greenColor,
                  borderWidth: 5,
                  callback: () {
                    setState(() => index = 0);
                    widget.callback(index);
                    animateTile();
                  },
                ),
                SmallButton(
                  text: "Received",
                  borderColor: (index != 1) ? greyColor : greenColor,
                  borderWidth: 5,
                  callback: () {
                    setState(() => index = 1);
                    widget.callback(index);
                    animateTile();
                  },
                ),
                SmallButton(
                  text: "All",
                  borderColor: (index != 2) ? greyColor : greenColor,
                  borderWidth: 5,
                  callback: () {
                    setState(() => index = 2);
                    widget.callback(index);
                    animateTile();
                  },
                ),
              ],
            ),
            height: _animatedHeight,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                color: greyColor),
          )
        ],
      ),
    );
  }
}

