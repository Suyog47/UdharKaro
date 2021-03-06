import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/textInputField.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();
  String _name, _email, _num, _pass, _cpass;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create Account,',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
                ),
                // height5,
                Text(
                  'Sign Up to get started!',
                  style: h4_Dark,
                ),
                height30,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: rectDecoration,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NameTextField(
                          decoration: inputDecor2,
                          label: "Full Name",
                          callback: (value){
                            setState(() => _name = value);
                          },
                        ),

                        height10,
                        EmailTextField(
                          decoration: inputDecor2,
                          label: "Email",
                          callback: (value){
                            setState(() => _email = value);
                          },
                        ),
                        height10,
                        PhoneTextField(
                          decoration: inputDecor2,
                          label: "Phone Number",
                          callback: (value){
                            setState(() => _num = value);
                          },
                        ),

                        height10,
                        PasswordTextField(
                          decoration: inputDecor2,
                          label: "Password",
                          callback: (value){
                            setState(() => _pass = value);
                          },
                        ),

                        height10,

                        PasswordTextField(
                            decoration: inputDecor2,
                            label: "Confirm Password",
                          callback: (value){
                              setState(() => _cpass = value);
                              },
                          ),
                      ],
                    ),
                  ),
                ),
                height30,
                Center(
                  child: SubmitButton(
                    text: "Sign Up",
                    width: 200,
                    height: 50,
                    elevation: 0,
                    color: lightBlueColor,
                    formKey: _formKey,
                    callback: (){

                      if(_pass == _cpass){
                       Navigate().toVerification(context);
                      }
                      else{
                        Fluttertoast.showToast(
                            msg: "Confirm Password dont match with Password field",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                    },
                  ),
                ),
                height30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    InkWell(
                        onTap: (){
                          Navigate().toLogin(context);
                        },
                        child: Text(" Login", style: TextStyle(fontSize: 18, color: redColor),)),
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



