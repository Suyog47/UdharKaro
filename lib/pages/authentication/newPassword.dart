import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/containerStyles.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';
import 'package:udhaarkaroapp/widgets/customButtons.dart';
import 'package:udhaarkaroapp/widgets/customizedTextFields.dart';


class newPassword extends StatefulWidget {
  @override
  _newPasswordState createState() => _newPasswordState();
}

class _newPasswordState extends State<newPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: blackColor,
                  size: 30,
                ),
              ),
            ),
             height30,
             Text('Create a new Password',style: TextStyle(
               fontWeight: FontWeight.w500,fontSize: 30
              ),
             ),
                height30,
                Text("""Please enter the OTP that has been \n      sent on your phone number """,style: TextStyle(
                    color: black38,fontSize: 15,fontWeight: FontWeight.w500,
                ),
                ),
                height10,
                Container(
                  decoration: rectDecoration,
                  child: Padding(
                    padding: EdgeInsets.only(left:20, right: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        otpTextField(),
                        passwordTextField(label: "Enter new Password",),
                        passwordTextField(label: "Re-enter Password",),

                      ],
                    ),
                  ),
                ),
                height30,
                height5,
                elevatedButton(buttonText: "Reset Password", onPress: (){}),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
