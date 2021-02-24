import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:udhaarkaroapp/Constants/colors.dart';
import 'package:udhaarkaroapp/Constants/heights.dart';
import 'package:udhaarkaroapp/Constants/icons.dart';
import 'package:udhaarkaroapp/Constants/widths.dart';
import '../Widget/circularAvatar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool status = true;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: grey300Color,
          body: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(25), bottomLeft: Radius.circular(25)),
                  ),

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("UDHAR KARO", style: TextStyle(fontSize: 32,)),

                          Container(

                          )
                        ],
                      ),

                      Height10,
                      Height10,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                              color: lightBlue,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Transform.rotate(angle: 3.142/4,  child: upArrowWhiteIcon),
                                Height5,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("Rs.", style: TextStyle(color: whiteColor, fontWeight: FontWeight.bold, fontSize: 18),),
                                    Width2,
                                    Text("1200", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: whiteColor)),
                                  ],
                                ),
                                Height5,
                                Text("to send", style: TextStyle(color: whiteColor),),
                              ],
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                              color: lightGreen,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Transform.rotate(angle: 3.142/4, child: downArrowWhiteIcon),
                                Height5,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("Rs.", style: TextStyle(color: whiteColor, fontWeight: FontWeight.bold, fontSize: 18 )),
                                    Width2,
                                    Text("2500", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30, color: whiteColor)),
                                  ],
                                ),
                                Height5,
                                Text("to receive", style: TextStyle(color: whiteColor),),
                              ],
                            ),
                          )
                        ],
                      ),

                      Height10,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SliderButton(
                                action: (){
                                  setState(() => status = !status );
                                },
                                label: Text(""),
                                icon: Icon(Icons.info, size: 10),
                                backgroundColor: (status) ? lightBlue : lightGreen,
                                vibrationFlag: false,
                                dismissible: false,
                                shimmer: false,
                                buttonSize: 15,
                                width: 30,
                                height: 15,
                              ),

                              Width5,

                              Text((status) ? "10 User(s)" :  "9 User(s)", style: TextStyle(fontWeight: FontWeight.bold),),
                            ],
                          ),
                          Icon(Icons.unfold_more),
                        ],
                      ),
                    ],
                  ),
                ),


                Flexible(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView.builder(
                        itemCount: 8,
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          return Card(
                            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              Text("Rs.", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                                              Width2,
                                              Text("1500", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                                            ],
                                          ),
                                          Height5,
                                          Text((status) ? "to Agarwal Sweets" : "from Agarwal Sweets", style: TextStyle(fontSize: 12),)
                                        ],
                                      ),
                                      Avatar(img: "assets/profilebg.png", radius: 25,),
                                    ],
                                  ),

                                  Height10,
                                  Height10,

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("2 January", style: TextStyle(fontWeight: FontWeight.bold),),
                                              Height5,
                                              Text("Last Transaction On", style: TextStyle(fontSize: 10),)
                                            ],
                                          ),
                                        ],
                                      ),

                                      (status) ?
                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                        decoration: BoxDecoration(
                                          color: whiteColor,
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: lightBlue, width: 2.0),
                                        ),
                                        child: Row(
                                          children: [
                                            Text("PAY", style: TextStyle(color: lightBlue),),
                                            Transform.rotate(angle: 3.142/4,  child: upArrowlightBlueIcon),
                                          ],
                                        ),
                                      ) :

                                      Container(
                                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                        decoration: BoxDecoration(
                                          color: whiteColor,
                                          borderRadius: BorderRadius.circular(15),
                                          border: Border.all(color: lightGreen, width: 2.0),
                                        ),
                                        child: Text("ALERT", style: TextStyle(color: lightGreen),),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),

          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(vertical: 15),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            ),
            width: MediaQuery.of(context).devicePixelRatio,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){ setState(() => _currentIndex = 0); },
                  child: (_currentIndex == 0) ?
                  Transform.scale(scale: 1.4, child: Icon(Icons.home, color: redColor,)) :
                  Icon(Icons.home, color: blackColor,),
                ),

                InkWell(
                    onTap: (){ setState(() => _currentIndex = 1); },
                    child: (_currentIndex == 1) ?
                    Transform.scale(scale: 1.4, child: Icon(Icons.add_alert, color: redColor,)) :
                    Icon(Icons.add_alert, color: blackColor,)),

                InkWell(
                    onTap: (){
                      setState(() => _currentIndex = 2);
                      Navigator.pushNamed(context, "/profilepage");
                      },
                    child: (_currentIndex == 2) ?
                    Transform.scale(scale: 1.4, child: Icon(Icons.account_circle, color: redColor,)) :
                    Icon(Icons.account_circle, color: blackColor,)),
              ],
            ),
          )
      ),
    );
  }
}
