import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/containerStyles.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';
import 'package:udhaarkaroapp/constants/widths.dart';
import 'package:udhaarkaroapp/widgets/customButtons.dart';
import 'package:udhaarkaroapp/widgets/customizedTextFields.dart';

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left:30, top:80, right:30,bottom:10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account,',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
                ),
                // height5,
                Text(
                  ' Sign Up to get started!',
                  style: logSignInTextStyle,
                ),
                height30,
                Container(
                  decoration: rectDecoration,
                  child: Padding(
                    padding: EdgeInsets.only(left:20, right: 20, bottom: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        customTextField(nameLabel: "Full Name",),
                        customTextField(nameLabel: "Phone No.",),
                        passwordTextField(label: "Password",),
                        passwordTextField(label: "Confirm Password",),
                      ],
                    ),
                  ),
                ),
                height30,
                elevatedButton(
                  buttonText:"Sign Up" ,
                  onPress: (){
                    Navigator.pushNamed(context,"/verification");
                  },
                ),
                SizedBox(
                    height:80
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/login");
                      },
                      child: Text('Login',
                        style: TextStyle(
                          color: lightBlueColor,fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}



