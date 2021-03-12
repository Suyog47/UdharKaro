import 'package:flutter/material.dart';

class Navigate{

  void toSignUp(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/signup", arguments: data);
  }

  void toLogin(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/login", arguments: data);
  }

  void toForgotPassword(context, [Map data]){
    Navigator.pushNamed(context, "/forgotpassword", arguments: data);
  }

  void toNewPassword(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/newpassword", arguments: data);
  }

  void toVerification(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/verification", arguments: data);
  }

  void toHome(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/home", arguments: data);
  }

  void toUserDetails(context, [Map data]){
    Navigator.pushNamed(context, "/userdetails", arguments: data);
  }

  void toMainScreen(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/mainscreen", arguments: data);
  }

  void toQRScanner(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/qrscanner", arguments: data);
  }

  void toEnterAmount(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/enteramount", arguments: data);
  }

  void toTakeAmountConfirmation(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/takeamountconfirmation", arguments: data);
  }

  void toGiveAmountConfirmation(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/giveamountconfirmation", arguments: data);
  }

  void toTakenAmount(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/takenamountdetails", arguments: data);
  }

  void toGivenAmount(context, [Map data]){
    Navigator.pushReplacementNamed(context, "/givenamountdetails", arguments: data);
  }

  void toAccountDetails(context, [Map data]){
    Navigator.pushNamed(context, "/accountdetails", arguments: data);
  }

  void toFeedback(context, [Map data]){
    Navigator.pushNamed(context, "/feedbackform", arguments: data);
  }

  void toFeedback2(context, [Map data]){
    Navigator.pushNamed(context, "/feedbackform2", arguments: data);
  }

  void toPrivacyPolicy(context, [Map data]){
    Navigator.pushNamed(context, "/privacypolicy", arguments: data);
  }

  void toAboutUs(context, [Map data]){
    Navigator.pushNamed(context, "/aboutus", arguments: data);
  }

  void toUserList(context, [Map data]){
    Navigator.pushNamed(context, "/userlist", arguments: data);
  }

  void backToLogin(context){
    Navigator.popUntil(context, ModalRoute.withName('/login'));
  }
}