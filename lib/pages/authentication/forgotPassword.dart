import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/textInputField.dart';


class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  final _formKey = GlobalKey<FormState>();
  String _num;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
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

                Icon(MdiIcons.lockQuestion,color: Color(0xFF41C8F3),size: 250,
                ),
                height30,
                Text(
                  'Forgot Password?',
                  style: h3_Dark,
                ),
                height10,
                Text("Enter your Registered mobile number so that we can send OTP to reset your password",
                  style: t18_Dark,
                  textAlign: TextAlign.center,),
                height30,
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        PhoneTextField(
                          decoration: inputDecor2.copyWith(labelText: "Phone Number", labelStyle: t16_Dark),
                          callable: (value){
                          setState(() => _num = value);
                          },
                        ),
                        height10,
                        SubmitButton(
                          text: "Continue",
                          width: 120,
                          height: 40,
                          elevation: 10,
                          color: lightBlueColor,
                          formKey: _formKey,
                          callable: (){
                            print(_num);
                          },
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),

          ),
        ),
      ),
    );
  }
}
