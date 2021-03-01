import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
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
                Text('Verification',style: TextStyle(
                    fontWeight: FontWeight.w500,fontSize: 35
                ),
                ),
                height60,
                height30,
                Text("Enter the verification code we have sent you on your mobile number.",
                  style: t18_Dark,
                  textAlign: TextAlign.center,
                ),
                height60,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("didn't receive code?",style: TextStyle(
                      color: black38,fontSize: 15,fontWeight: FontWeight.w500,
                     ),
                    ),
                    InkWell(
                      onTap: (){

                      },
                        child: Text(" Resend", style: TextStyle(fontSize: 18, color: redColor),

                    )),
                  ],
                ),
                height30,
                Button(
                  width: 120,
                  height: 45,
                  text: "Verify",
                  color: lightBlueColor,
                  elevation: 0.0,
                  callable: (){

                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
