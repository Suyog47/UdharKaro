import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/headers.dart';
import 'package:udhaarkaroapp/widgets/radioButtons.dart';

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  List _str = [
    "Most Likely",
    "More Likely",
    "Somewhat",
    "Less Likely",
    "Not Likely"
  ];
  String _radioval = "Somewhat";
  double _rate = 3.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Header(text: "Feedback Form", backIcon: true),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Please provide your valuable rating",
                            style: t20_Dark,
                          ),
                          height10,
                          height10,
                          RatingBar.builder(
                            initialRating: _rate,
                            allowHalfRating: true,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: amberColor,
                            ),
                            onRatingUpdate: (rating) {
                              _rate = rating;
                            },
                          ),
                        ],
                      ),
                      height10,
                      height10,
                      height10,
                      height10,
                      height10,
                      Column(
                        children: [
                          Text(
                            "How likely you will suggest our app to others",
                            style: t20_Dark,
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                          height10,
                          height10,
                          RadioButton(
                            str: _str,
                            callback: (value) {
                              setState(() => _radioval = value);
                            },
                          ),
                        ],
                      ),
                      height10,
                      height10,
                      Align(
                        alignment: Alignment.centerRight,
                        child: Button(
                          text: "Next",
                          width: 100,
                          height: 40,
                          elevation: 0,
                          color: darkBlueColor,
                          callback: () {
                            Navigate().toFeedback2(context, {
                              "rating": _rate,
                              "radioval": _radioval
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
