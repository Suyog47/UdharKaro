import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/Constants/colors.dart';
import 'package:udhaarkaroapp/Constants/icons.dart';
import '../Constants/heights.dart';
import '../Widget/circularAvatar.dart';

class AccountDetails extends StatefulWidget {
  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {

  bool _enable = false;
  String _num = "8879438873", _pass = "sa1147";
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 40),
                  decoration: BoxDecoration(
                    color: darkBlueColor,
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(onTap: (){Navigator.pop(context);},
                            child: backIcon),
                      ),

                     Height10,

                      Center(
                        child: Avatar(img: "assets/profilebg.png", radius: 45,)
                      ),

                      Height10,

                      Center(child: Text("Suyog Amin", style: TextStyle(fontWeight: FontWeight.bold, color: whiteColor, fontSize: 40),))
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Phone", style: TextStyle(color: greyColor, fontSize: 16),),
                            TextFormField(
                              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                              keyboardType: TextInputType.number,
                              initialValue: _num,
                              enabled: _enable,
                              maxLength: 10,
                              validator: (val) {
                                if(val.length == 10 && int.parse(val[0]) >= 7 ){
                                  return null;
                                }
                                return "Enter valid phone number";
                              },
                              cursorColor: redColor,
                              onChanged: (val) => _num = val,
                            ),
                          ],
                        ),

                        Height10,

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Category", style: TextStyle(color: greyColor, fontSize: 16),),
                            Height10,
                            Text("Business Account", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                          ],
                        ),

                        Height10,
                        Height10,
                        Height10,

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Password", style: TextStyle(color: greyColor, fontSize: 16),),
                            TextFormField(
                              initialValue: _pass,
                              enabled: _enable,
                              validator: (val) => val.length < 6 || val.length > 20 ? 'Password should be between 6 to 20 chars.' : null,
                              cursorColor: Colors.red,
                              onChanged: (val) => _pass = val,
                            ),
                          ],
                        ),


                        Height10,
                        Height10,

                      Center(
                        child: InkWell(
                          onTap: (){
                            if(_formkey.currentState.validate()) {
                              print(_num);
                              print(_pass);
                            }
                          },
                          child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: darkBlueColor,
                                  ),
                                  child: Text("Save", style: TextStyle(color: whiteColor, fontSize: 21)),
                        ),
                        ),
                      )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
