import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int type = 1;
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
          backgroundColor: lightGreyColor,
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
                          Text("UDHAAR KARO", style: h3_Dark,),

                          Container(

                          )
                        ],
                      ),

                      height10,
                      height10,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, "/qrscanner");
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                              decoration: BoxDecoration(
                                color: lightBlueColor,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Transform.rotate(angle: 3.142/4,  child: upArrowWhiteIcon),
                                  height5,
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Rs.", style: h4_Light,),
                                      width2,
                                      Text("1200", style: h3_Light),
                                    ],
                                  ),
                                  height5,
                                  Text("to send", style: TextStyle(color: whiteColor),),
                                ],
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                            decoration: BoxDecoration(
                              color: lightGreenColor,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Transform.rotate(angle: 3.142/4, child: downArrowWhiteIcon),
                                height5,
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text("Rs.", style: h4_Light),
                                    width2,
                                    Text("2500", style: h3_Light),
                                  ],
                                ),
                                height5,
                                Text("to receive", style: TextStyle(color: whiteColor),),
                              ],
                            ),
                          )
                        ],
                      ),

                      height10,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [

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
                          return HomeCard(
                            type: type,
                            str: str,
                            itemIndex: index,
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
