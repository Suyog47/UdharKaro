import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/textInputField.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  String _num, _pass;

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
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        PhoneTextField(
                          decoration: inputDecor2.copyWith(labelText: "Phone Number", labelStyle: t16_Dark),
                          callback: (value){
                           setState(() => _num = value);
                          },
                        ),

                        height10,
                        height10,

                        PasswordTextField(
                          decoration: inputDecor2.copyWith(labelText: "Password", labelStyle: t16_Dark),
                          callback: (value){
                            setState(() => _pass = value);
                          },
                        ),
                        height5,
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                              onTap:(){
                                Navigate().toForgotPassword(context);
                              },
                              child: Text("Forgot Password?", style: t14_Dark,)),
                        ),
                      ],
                    ),
                  ),
                ),
                height30,
                Center(
                  child: SubmitButton(
                    text: "Login",
                    width: 150,
                    height: 40,
                    color: lightBlueColor,
                    formKey: _formKey,
                    callback: (){
                      Navigate().toMainScreen(context);
                    },
                  ),
                ),
                height60,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    width5,
                    InkWell(
                        onTap: (){
                           Navigate().toSignUp(context);
                        },
                        child: Text(" Sign-Up", style: TextStyle(fontSize: 19, color: blueColor),
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
