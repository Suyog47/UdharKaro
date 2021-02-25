import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';

import '../constants/textStyles.dart';
class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {

  String r1 = "Most Likely", r2 = "More Likely", r3 = "Somewhat", r4 = "Less Likely", r5 = "Not Likely";
  String _rval = "Somewhat";
  double _rate = 3.0;

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
                    Align(child: InkWell(
                        onTap: (){Navigator.pop(context);},
                        child: backIcon), alignment: Alignment.centerLeft,),

                    Height10,

                    Center(child: Text("Feedback Form", style: profileHeaderTextStyle,))
                  ],
                ),
              ),

              Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Please provide your valuable rating", style: profileBodyTextStyle,),

                            Height10,
                            Height10,

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

                        Height10,
                        Height10,
                        Height10,
                        Height10,
                        Height10,

                        Column(
                          children: [
                            Text("How likely you will suggest our app to others", style: profileBodyTextStyle, softWrap: true, textAlign: TextAlign.center,),

                            Height10,
                            Height10,

                            SizedBox(
                              height: 38,
                              child: ListTile(
                                title: Text(r1, style: radioButtonTextStyle,),
                                leading: Radio(
                                  value: r1,
                                  groupValue: _rval,
                                  onChanged: (value) {
                                    setState(() => _rval = value);
                                  },
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 38,
                              child: ListTile(
                                title: Text(r2, style: radioButtonTextStyle,
                                ),
                                leading: Radio(
                                  value: r2,
                                  groupValue: _rval,
                                  onChanged: (value) {
                                    setState(() => _rval = value);
                                  },
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 38,
                              child: ListTile(
                                title: Text(r3, style: radioButtonTextStyle,
                                ),
                                leading: Radio(
                                  value: r3,
                                  groupValue: _rval,
                                  onChanged: (value) {
                                    setState(() => _rval = value);
                                  },
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 38,
                              child: ListTile(
                                title: Text(r4, style: radioButtonTextStyle,
                                ),
                                leading: Radio(
                                  value: r4,
                                  groupValue: _rval,
                                  onChanged: (value) {
                                    setState(() => _rval = value);
                                  },
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 38,
                              child: ListTile(
                                title: Text(r5, style: radioButtonTextStyle,
                                ),
                                leading: Radio(
                                  value: r5,
                                  groupValue: _rval,
                                  onChanged: (value) {
                                    setState(() => _rval = value);
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),



                        Height10,
                        Height10,

                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: (){
                              print(_rate);
                              print(_rval);
                              Navigator.pushNamed(context, "/feedbackform2");
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: darkBlueColor,
                              ),
                              child: Text("Next", style: TextStyle(color: whiteColor, fontSize: 18)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
