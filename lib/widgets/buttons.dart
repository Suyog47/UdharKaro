import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final double elevation;
  final Color color;
  final formKey;
  final Function callable;

  SubmitButton(
      {this.text, this.width, this.height, this.elevation, this.color, this.formKey, this.callable});

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
            callable();
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
  final Function callable;

  Button({this.text, this.width, this.height, this.elevation, this.color, this.callable});

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
          callable();
        },
      ),
    );
  }
}

class TakeFloatingButton extends StatelessWidget {
  final Function callable;

  TakeFloatingButton({this.callable});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callable();
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
  final Function callable;

  GaveFloatingButton({this.callable});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        callable();
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
