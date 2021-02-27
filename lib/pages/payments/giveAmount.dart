import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/circularAvatar.dart';

class GiveAmount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: backIconDark
                  ),
                ),
                height30,
                Avatar(
                  img: "assets/profilebg.png",
                  radius: 35,
                ),
                height10,
                height10,
                Text(
                  'Giving to',
                  style: h4_Dark,
                ),
                Text(
                  'Suyog Amin',
                  style: h3_Dark,
                ),
                height30,
                Text(
                  'Rs.',
                  style: h3_Dark,
                ),

                height5,
                SizedBox(
                  width: 120,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    keyboardType: TextInputType.number,
                    style: h1_Dark,
                    maxLength: 4,
                  ),
                ),
                height10,
                height10,
                Container(
                  width: 220,
                  height: 80,
                  child: TextFormField(
                    style: t20_Dark,
                    maxLines: 4,
                    textAlignVertical: TextAlignVertical.top,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      hintText: "Add a Description",
                      fillColor: lightGreyColor,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: greyColor, width: 2.0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: redColor, width: 2.0),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                height30,
                height30,
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "/paidAmountDetails");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    decoration: BoxDecoration(
                      color: lightBlueColor,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Icon(Icons.arrow_forward, color: whiteColor,),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
