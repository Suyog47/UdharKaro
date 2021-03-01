import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/pages/authentication/forgotPassword.dart';
import 'package:udhaarkaroapp/pages/authentication/login.dart';
import 'package:udhaarkaroapp/pages/authentication/newPassword.dart';
import 'package:udhaarkaroapp/pages/authentication/signUp.dart';
import 'package:udhaarkaroapp/pages/authentication/verification.dart';
import 'package:udhaarkaroapp/pages/pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown,DeviceOrientation.portraitUp]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/mainscreen",
      routes: {
        "/mainscreen" : (context) => MainScreen(),
        "/home" : (context) => Home(),
        "/profilepage" : (context) => ProfilePage(),
        "/accountdetails" : (context) => AccountDetails(),
        "/privacypolicy" : (context) => PrivacyPolicy(),
        "/aboutus" : (context) => AboutUs(),
        "/feedbackform" : (context) => FeedbackForm(),
        "/feedbackform2" : (context) => FeedbackForm2(),
        "/userlist" : (context) => UsersList(),
        "/qrscanner" : (context) => QRCodeScanner(),
        "/notification" : (context) => Notifications(),
        "/giveAmount" : (context) => GiveAmount(),
        "/paidAmountDetails" : (context) => PaidAmountDetails(),
        "/takenAmountDetails" : (context) => TakenAmountDetails(),
        "/signUp" : (context) => signUp(),
        "/login" : (context) => login(),
        "/forgotPassword" : (context) => forgotPassword(),
        "/newPassword" : (context) => newPassword(),
        "/verification" : (context) => verification(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
