import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/containerStyles.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';
import 'package:udhaarkaroapp/constants/widths.dart';
import 'package:udhaarkaroapp/widgets/customButtons.dart';
import 'package:udhaarkaroapp/widgets/customizedTextFields.dart';

// ignore: camel_case_types
class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left:30, top:100, right:30,bottom:10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome,',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 45),
                ),
                // height5,
                Text(
                  ' Log in to continue!',
                  style: logSignInTextStyle,
                ),
                height60,
                Container(
                  decoration: rectDecoration,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 20, 15, 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        customTextField(nameLabel: "Phone No.",),
                      passwordTextField(label: "Password",),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context, "/forgotPassword");
                            },
                            child: Text('forgot password?',
                            style: TextStyle(color: blackColor),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                height30,
                elevatedButton(
                  buttonText:"Login" ,
                  onPress: (){},
                ),
                SizedBox(height:80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, "/signUp");
                      },
                      child: Text('Sign Up',
                        style: TextStyle(
                        color: Colors.red,fontSize: 20,
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
