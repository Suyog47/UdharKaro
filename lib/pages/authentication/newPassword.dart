import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/textInputField.dart';


class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {

  final _formKey = GlobalKey<FormState>();
  String _pass, _cpass;

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
             Text('Create a new Password',
               style: h3_Dark
             ),
                height30,
                Text("Please enter the OTP that has been sent on your phone number ",
                  style: t16_Dark,
                  textAlign: TextAlign.center,
                ),
                height30,
                Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: rectDecoration,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //otpTextField(),
                        PasswordTextField(
                          decoration: inputDecor2.copyWith(labelText: "Enter new Password", labelStyle: t16_Dark),
                          callable: (value){
                            setState(() => _pass = value);
                          },
                        ),

                        height10,

                        PasswordTextField(
                          decoration: inputDecor2.copyWith(labelText: "ReEnter new Password", labelStyle: t16_Dark),
                          callable: (value){
                            setState(() => _cpass = value);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                height30,
                height5,
                SubmitButton(
                  text: "Reset Password",
                  width: 200,
                  height: 50,
                  elevation: 10,
                  color: lightBlueColor,
                  formKey: _formKey,
                  callable: (){
                    if(_pass == _cpass){

                    }
                    else{
                      print("match cancel");
                    }
                  },
                ),
              ]
            ),
          ),
        ),
      ),
    );
  }
}