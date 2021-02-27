import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/circularAvatar.dart';

class TakenAmountDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  decoration: BoxDecoration(
                    color:greenColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20.0),
                      bottomRight: Radius.circular(20.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: blackColor,
                          ),
                        ),
                      ),
                      height30,
                      Center(
                        child: Avatar(
                          img: "assets/profilebg.png",
                          radius: 45,
                        ),
                      ),
                      height30,
                      Text(
                        'Amount taken from',
                        style: gaveOrTakenTextStyle,
                      ),
                      height10,
                      Text(
                        'Suyog Amin',
                        style: amountDetailsNameTextStyle,
                      ),
                      height10,
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      height10,
                      Text(
                        'Received',
                        style: detailsHeadingTextStyle,
                      ),
                      Row(
                        children: [
                          Text(
                              '2500',
                              style: amountDetailsTextStyle
                          ),
                          Text(
                            'rs.',
                            style: size20TextStyle,
                          ),
                        ],
                      ),
                      height30,
                      Text(
                          'Date',
                          style: detailsHeadingTextStyle
                      ),
                      Text(
                        '20/02/2021-12:30',
                        style: size25TextStyle,
                      ),
                      height30,
                      Text(
                        'Transaction ID',
                        style: detailsHeadingTextStyle,
                      ),
                      Text(
                        '12345678910342312',
                        style: size25TextStyle,
                      ),
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