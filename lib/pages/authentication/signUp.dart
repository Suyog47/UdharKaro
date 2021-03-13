import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/circularAvatar.dart';
import 'package:udhaarkaroapp/widgets/textInputField.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final _formKey = GlobalKey<FormState>();
  String _name, _email;

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

                Text(
                  'Sign Up to get started!',
                  style: h4_Dark,
                ),
                height60,
                Text('Enter your personal details' ,style: TextStyle(fontSize: 17),),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  decoration: rectDecoration,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Avatar(
                          img: "assets/profilebg.png",
                          radius: 50,
                        ),
                        height10,
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
                      ],
                    ),
                  ),
                ),
                height30,
               Center(
                 child: SubmitButton(formKey: _formKey,
                     callback: (){
                   Navigate().toSignUp2(context);
                 },
                   text: "Next",
                   width: 100,
                   height: 40,
                   color: lightBlueColor,
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



