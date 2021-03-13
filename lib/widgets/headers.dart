import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';

class Header extends StatelessWidget {
  final String text;
  final bool backIcon;

  Header({
    @required this.text,
    this.backIcon = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: displayHeight(context) * 0.2,
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      decoration: BoxDecoration(
        color: darkBlueColor,
      ),
      child: Column(
        children: [
          (backIcon)
              ? Align(
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: backIconLight),
                  alignment: Alignment.centerLeft,
                )
              : height30,
          height10,
          Center(
            child: Text(
              text,
              style: h3_Light,
            ),
          )
        ],
      ),
    );
  }
}


class HomePageTabBarButton extends StatelessWidget {

  final Color color;
  final Icon icon;
  final String price;
  final String subtitle;
  final String buttonText;
  final int count;

  HomePageTabBarButton({this.color, this.icon, this.price, this.subtitle, this.buttonText, this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:
          EdgeInsets.symmetric(horizontal: 23, vertical: 10),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Transform.rotate(
                  angle: 3.142 / 4, child: icon),
              height10,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Rs.",
                    style: h4_Light,
                  ),
                  width2,
                  Text(price, style: h3_Light),
                ],
              ),
              height10,
              Text(
                subtitle,
                style: TextStyle(color: whiteColor),
              ),
            ],
          ),
        ),
        height10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              style: TextStyle(color: color, fontSize: 20),
            ),
            width5,
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Text(
                count.toString(),
                style: t12_Light,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ],
    );
  }
}

