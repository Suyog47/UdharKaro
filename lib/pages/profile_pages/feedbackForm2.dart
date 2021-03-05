import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/headers.dart';

class FeedbackForm2 extends StatefulWidget {
  @override
  _FeedbackForm2State createState() => _FeedbackForm2State();
}

class _FeedbackForm2State extends State<FeedbackForm2> {
  String _msg = "";
  Map _data = {};

  @override
  Widget build(BuildContext context) {

    _data = ModalRoute.of(context).settings.arguments;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Header(text: "Feedback Form"),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  children: [
                    Text(
                      "Anything else you would like to share with us about our mobile app",
                      style: t20_Dark,
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                    height30,
                    TextFormField(
                      style: TextStyle(fontSize: 18),
                      decoration: inputDecor2.copyWith(hintText: "Write Something"),
                      cursorColor: redColor,
                      onChanged: (val) => _msg = val,
                      minLines: 10,
                      maxLines: 12,
                    ),
                  ],
                ),
              ),
              Center(
                child: Button(
                  width: 180,
                  height: 50,
                  text: "Send",
                  elevation: 0,
                  color: darkBlueColor,
                  callback: (){
                   print(_data);
                  },
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
