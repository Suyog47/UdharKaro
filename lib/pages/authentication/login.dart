import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/textInputField.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  String num, pass;

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
                  style: h4_Dark,
                ),
                height60,
                Container(
                  decoration: rectDecoration,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PhoneTextField(
                          decoration: inputDecor2.copyWith(labelText: "Phone Number", labelStyle: t16_Dark),
                          callable: (value){
                           setState(() => num = value);
                          },
                        ),

                        height30,

                        PasswordTextField(
                          decoration: inputDecor2.copyWith(labelText: "Password", labelStyle: t16_Dark),
                          callable: (value){
                            setState(() => pass = value);
                          },
                        ),
                        SubmitButton(
                          text: "Submit",
                          width: 120,
                          height: 40,
                          elevation: 10,
                          color: lightBlueColor,
                          formKey: _formKey,
                          callable: (){
                            print(num);
                            print(pass);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                height30,
                SizedBox(height:80),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    width5,
                    InkWell(
                        onTap: (){

                        },
                        child: Text("Sign-Up", style: TextStyle(fontSize: 19, color: blueColor),)),
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
