import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'package:udhaarkaroapp/widgets/circularAvatar.dart';


class EnterAmount extends StatefulWidget {
  @override
  _EnterAmountState createState() => _EnterAmountState();
}

class _EnterAmountState extends State<EnterAmount> {

  Map _data = {};
  String _name = "Suyog Amin";
  int _amount;

  @override
  Widget build(BuildContext context) {

    _data = ModalRoute.of(context).settings.arguments;

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
                  (_data["type"] == 1) ? "Taking from" : "Giving to",
                  style: h4_Dark,
                ),
                Text(
                  _name,
                  style: h3_Dark,
                ),
                height60,

                height5,
                SizedBox(
                  width: 225,
                  child: TextFormField(
                    decoration: inputDecor2.copyWith(labelText: "Rs.", labelStyle: t26_Dark),
                    textAlign: TextAlign.center,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(7)
                    ],
                    keyboardType: TextInputType.number,
                    style: h1_Dark,
                    onChanged: (val){
                      _amount = int.parse(val);
                    },
                  ),
                ),
                height30,
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
                    ),
                  ),
                ),
                height30,
                height30,
                InkWell(
                    onTap: () {
                      (_data["type"] == 1) ?
                      Navigate().toTakeAmountConfirmation(context, {"name" : _name, "amount" : _amount})
                      :
                      Navigate().toGiveAmountConfirmation(context, {"name" : _name, "amount" : _amount});
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

