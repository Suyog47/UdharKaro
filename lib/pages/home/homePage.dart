import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/card.dart';
import 'package:udhaarkaroapp/widgets/emptyscreen.dart';
import 'package:udhaarkaroapp/widgets/headers.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _type = 1;
  int data = 0;
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
                HomePageTabBarButton(
                    color: lightBlueColor,
                    icon: downArrowWhiteIcon,
                    price: "2500",
                    subtitle: "to take",
                    buttonText: "Taken",
                    count: 11),
                HomePageTabBarButton(
                  color: lightOrangeColor,
                  icon: upArrowWhiteIcon,
                  price: "1200",
                  subtitle: "to gave",
                  buttonText: "Given",
                  count: 8,
                ),
              ],
              indicatorColor: redColor,
            ),
          ),
          body: TabBarView(children: [
            (data == 0)
                ? EmptyScreen(
                    text: "OOPS! No Transactions found.",
                  )
                : ListView.builder(
                    physics: BouncingScrollPhysics(),
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
            (data == 0)
                ? EmptyScreen(
                    text: "OOPS! No Transactions found.",
                  )
                : ListView.builder(
                    physics: BouncingScrollPhysics(),
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
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
        ),
      ),
    );
  }
}
