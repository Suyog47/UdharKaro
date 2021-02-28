import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';



class elevatedButton extends StatelessWidget {
  elevatedButton({@required this.buttonText,@required this.onPress});
  final String buttonText;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(buttonText,style: size25TextStyle,),
      style: ElevatedButton.styleFrom(
        onPrimary: Colors.white,
        primary: lightBlueColor,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(14.0),
        ),
        side: BorderSide(
          color: lightBlueColor,
        ),
        minimumSize: Size(330,55),
      ),
      onPressed:onPress,
    );
  }
}


