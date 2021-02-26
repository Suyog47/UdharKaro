import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';

class FeedbackForm2 extends StatefulWidget {
  @override
  _FeedbackForm2State createState() => _FeedbackForm2State();
}

class _FeedbackForm2State extends State<FeedbackForm2> {
  String _msg = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                decoration: BoxDecoration(
                  color: darkBlueColor,
                ),
                child: Column(
                  children: [
                    Align(
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: backIcon),
                      alignment: Alignment.centerLeft,
                    ),
                    height10,
                    Center(
                        child: Text(
                      "Feedback Form",
                      style: h3_Light,
                    ))
                  ],
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                    child: Column(
                      children: [
                        Text(
                          "Anything else you would like to share with us about our mobile app",
                          style: t20_Dark,
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                        height10,
                        height10,
                        height10,
                        TextFormField(
                          style: TextStyle(fontSize: 18),
                          cursorColor: redColor,
                          onChanged: (val) => _msg = val,
                          minLines: 8,
                          maxLines: 12,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: darkBlueColor,
                    ),
                    child: Text("Send",
                        style: TextStyle(color: whiteColor, fontSize: 21)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
