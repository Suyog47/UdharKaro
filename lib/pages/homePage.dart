import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/constants/widths.dart';
import 'package:udhaarkaroapp/widgets/card.dart';
import 'package:udhaarkaroapp/widgets/circularAvatar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool status = true;
  int _currentIndex = 0;
  List str = [{
    "vendor": "Agarwal Sweets",
    "price": "1500",
    "lastTransaction": "2/02/2021",
    "pic": "assets/profilebg.png",
  },
    {
      "vendor": "TipTop Sweets",
      "price": "2500",
      "lastTransaction": "3/02/2021",
      "pic": "assets/profilebg.png",
    },
    {
      "vendor": "McDonalds",
      "price": "2300",
      "lastTransaction": "4/02/2021",
      "pic": "assets/profilebg.png",
    }];

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
                        itemCount: str.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          return homeCard(
                            status: status,
                            str: str,
                            itemIndex: index,
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
