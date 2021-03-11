import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';

//SubmitButton
//Button
//TakeFloatingButton
//GaveFloatingButton
//SmallButton

class SubmitButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double elevation;
  final Color color;
  final formKey;
  final Function callback;

  SubmitButton(
      {this.text = "",
      this.width = 100,
      this.height = 50,
      this.elevation = 0.0,
      this.color = greyColor,
      @required this.formKey,
      @required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, elevation),
              blurRadius: (elevation == 0) ? 0 : 20 //(x,y)
              ),
        ],
      ),
      child: RawMaterialButton(
        child: Text(text, style: h4_Light),
        onPressed: () {
          if (formKey.currentState.validate()) {
            callback();
          }
        },
      ),
    );
  }
}

class Button extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double width;
  final double height;
  final double elevation;
  final Color borderColor;
  final double borderRadius;
  final double borderWidth;
  final Color color;
  final Function callback;

  Button({this.text = "",
    this.textStyle = h4_Light,
    this.width = 100,
    this.height = 50,
    this.elevation = 0.0,
    this.color = greyColor,
    this.borderColor = redColor,
    this.borderRadius = 10.0,
    this.borderWidth = 1.0,
    @required this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor, width: borderWidth),
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(0.0, elevation),
              blurRadius: (elevation == 0) ? 0 : 20 //(x,y)
              ),
        ],
      ),
      child: RawMaterialButton(
        elevation: elevation,
        child: Text(text, style: textStyle),
        onPressed: () {
          callback();
        },
      ),
    );
  }
}

class TakeFloatingButton extends StatelessWidget {
  final Function callback;

  TakeFloatingButton({@required this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callback();
      },
      child: Container(
        height: 60,
        width: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35), color: lightBlueColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(angle: 3.142 / 4, child: downArrowWhiteIcon),
            width5,
            Text(
              "Take",
              style: h4_Light,
            ),
          ],
        ),
      ),
    );
  }
}

class GaveFloatingButton extends StatelessWidget {
  final Function callback;

  GaveFloatingButton({@required this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callback();
      },
      child: Container(
        height: 60,
        width: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35), color: lightOrangeColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.rotate(angle: 3.142 / 4, child: upArrowWhiteIcon),
            width5,
            Text(
              "Gave",
              style: h4_Light,
            ),
          ],
        ),
      ),
    );
  }
}

//class SmallButton extends StatelessWidget {
//  final String text;
//  final Color borderColor;
//  final double borderWidth;
//  final Function callback;
//
//  SmallButton(
//      {this.text = "",
//      this.borderColor = redColor,
//      this.borderWidth = 3,
//      @required this.callback});
//
//  @override
//  Widget build(BuildContext context) {
//    return InkWell(
//      onTap: () {
//        callback();
//      },
//      child: Container(
//        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
//        child: Text(text, style: t14_Dark),
//        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(30),
//          border: Border.all(color: borderColor, width: borderWidth),
//          color: lightGreyColor,
//        ),
//      ),
//    );
//  }
//}


