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
      {this.text, this.width, this.height, this.elevation, this.color, this.formKey, this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: RawMaterialButton(
        elevation: elevation,
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
  final double width;
  final double height;
  final double elevation;
  final Color color;
  final Function callback;

  Button({this.text, this.width, this.height, this.elevation, this.color, this.callback});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: RawMaterialButton(
        elevation: elevation,
        child: Text(text, style: h4_Light),
        onPressed: () {
          callback();
        },
      ),
    );
  }
}

class TakeFloatingButton extends StatelessWidget {
  final Function callback;

  TakeFloatingButton({this.callback});

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

  GaveFloatingButton({this.callback});

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
            borderRadius: BorderRadius.circular(35), color: lightGreenColor),
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

class SmallButton extends StatelessWidget {
  final String text;
  final Color border;
  final Function callback;

  SmallButton({this.text, this.border, this.callback});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        callback();
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Text(text, style: t14_Dark),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: border, width: 5),
          color: lightGreyColor,
        ),
      ),
    );
  }
}
