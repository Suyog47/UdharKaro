import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {

  String r1 = "Most Likely", r2 = "More Likely", r3 = "Somewhat", r4 = "Less Likely", r5 = "Not Likely";
  String _rval = "";
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
                  color: HexColor("140B4F"), //Color(0x140B4F),
                ),
                child: Column(
                  children: [
                    Align(child: InkWell(
                        onTap: (){Navigator.pop(context);},
                        child: Icon(Icons.arrow_back,color: Colors.white, size: 30,)), alignment: Alignment.centerLeft,),

                    SizedBox(height: 10,),

                    Center(child: Text("Feedback Form", style: TextStyle(color: Colors.white, fontSize: 30),))
                  ],
                ),
              ),

              Flexible(
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    child: Column(
                      children: [
                        Text("Please provide your valuable rating", style: TextStyle(fontSize: 18),),

                        SizedBox(height: 20,),

                      RatingBar.builder(
                        initialRating: _rate,
                        minRating: 1,
                        direction: Axis.horizontal,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 5.0),
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          _rate = rating;
                        },
                      ),

                        SizedBox(height: 50,),

                        Text("How likely you will suggest our app to others", style: TextStyle(fontSize: 18), softWrap: true, textAlign: TextAlign.center,),

                        SizedBox(height: 20,),

                        SizedBox(
                          height: 38,
                          child: ListTile(
                            title: Text(r1, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
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
                            title: Text(r2, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
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
                            title: Text(r3, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
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
                            title: Text(r4, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
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
                            title: Text(r5, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                            leading: Radio(
                              value: r5,
                              groupValue: _rval,
                              onChanged: (value) {
                                setState(() => _rval = value);
                              },
                            ),
                          ),
                        ),

                        SizedBox(height: 20,),
                        
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: (){
                              if(_rval.isNotEmpty){
                                print(_rate);
                                print(_rval);
                                Navigator.pushNamed(context, "/feedbackform2");
                              }
                              else{
                                print("select all");
                              }
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: HexColor("140B4F"),
                              ),
                              child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 18)),
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
