import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';


class passwordTextField extends StatelessWidget {
  passwordTextField({this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextField(
        onChanged: (text) {},
        decoration: InputDecoration(
          fillColor: whiteColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(
                color:Color(0xFFF8F0F0), width: 1
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(12),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:Colors.black, width: 1,
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(12),
            ),
          ),
          labelText: "$label",
          suffixIcon: Icon(
            Icons.remove_red_eye,
            color: Color(0xFFF8F0F0),
          ),
        ),
      ),
    );
  }
}


class customTextField extends StatelessWidget {
  customTextField({this.nameLabel});
  final String nameLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextField(
        onChanged: (text) {},
        decoration: InputDecoration(
          fillColor: whiteColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(
                color:Color(0xFFF8F0F0), width: 1
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(12),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:Colors.black, width: 1,
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(12),
            ),
          ),
          labelText: "$nameLabel",
        ),
      ),
    );
  }
}


class otpTextField extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: TextField(
        onChanged: (text) {},
        decoration: InputDecoration(
          fillColor: whiteColor,
          filled: true,
          enabledBorder: OutlineInputBorder(
            borderSide:BorderSide(
                color:Color(0xFFF8F0F0), width: 1
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(12),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color:Colors.black, width: 1,
            ),
            borderRadius:
            BorderRadius.all(Radius.circular(12),
            ),
          ),
          labelText: "OTP",
          suffixIcon: Icon(
            Icons.refresh,
            color: blackColor,
          ),
        ),
      ),
    );
  }
}
