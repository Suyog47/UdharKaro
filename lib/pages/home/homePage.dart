import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _type = 1;
  List _str = [
    {
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
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: lightGreyColor,
          appBar: AppBar(
            toolbarHeight: 210,
            flexibleSpace: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: whiteColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "UDHAAR KARO",
                        style: h3_Dark,
                      ),
                      Container()
                    ],
                  ),
                  height10,
                  height10,
                ],
              ),
            ),
            bottom: TabBar(
              tabs: [
                Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                      decoration: BoxDecoration(
                        color: lightBlueColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Transform.rotate(
                              angle: 3.142 / 4, child: upArrowWhiteIcon),
                          height5,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Rs.",
                                style: h4_Light,
                              ),
                              width2,
                              Text("1200", style: h3_Light),
                            ],
                          ),
                          height5,
                          Text(
                            "to send",
                            style: TextStyle(color: whiteColor),
                          ),
                        ],
                      ),
                    ),
                    height10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Taken",
                          style: TextStyle(color: lightBlueColor, fontSize: 20),
                        ),
                        width5,
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            color: lightBlueColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "11",
                            style: t12_Light,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 23, vertical: 10),
                      decoration: BoxDecoration(
                        color: lightOrangeColor,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Transform.rotate(
                              angle: 3.142 / 4, child: downArrowWhiteIcon),
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
                          Text(
                            "to receive",
                            style: TextStyle(color: whiteColor),
                          ),
                        ],
                      ),
                    ),
                    height10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Given",
                          style:
                              TextStyle(color: lightOrangeColor, fontSize: 20),
                        ),
                        width5,
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          decoration: BoxDecoration(
                            color: lightOrangeColor,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Text(
                            "8",
                            style: t12_Light,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
              indicatorColor: redColor,
            ),
          ),
          body: TabBarView(children: [
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _str.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return HomeCard(
                    type: 1,
                    str: _str,
                    itemIndex: index,
                  );
                }),
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: _str.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return HomeCard(
                    type: 2,
                    str: _str,
                    itemIndex: index,
                  );
                }),
          ]),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TakeFloatingButton(
                callback: () {
                  Navigate().toQRScanner(context, {"type": 1});
                },
              ),
              GaveFloatingButton(
                callback: () {
                  Navigate().toQRScanner(context, {"type": 2});
                },
              )
            ],
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        ),
      ),
    );
  }
}
