import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/icons.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';
import 'package:udhaarkaroapp/constants/widths.dart';
import 'package:udhaarkaroapp/widgets/customizedTextFields.dart';


class forgotPassword extends StatefulWidget {
  @override
  _forgotPasswordState createState() => _forgotPasswordState();
}

class _forgotPasswordState extends State<forgotPassword> {
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
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
                ),
                height10,
                Text
                  (
                    """Enter your registered mobile number\n   so that we can send OTP to reset  
                 your password. """,style: size20TextStyle,),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: customTextField(nameLabel: "Phone No.",),
                ),
                ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context,"/newPassword");
                  },
                  child: Text("Continue",style: size20TextStyle,),
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Color(0xFF41C8F3),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(12.0),
                    ),
                    side: BorderSide(
                      color: Color(0xFF41C8F3),
                    ),
                    minimumSize: Size(70,45),
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
