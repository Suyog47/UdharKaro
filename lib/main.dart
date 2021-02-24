import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/pages/aboutUs.dart';
import 'package:udhaarkaroapp/pages/accountDetails.dart';
import 'package:udhaarkaroapp/pages/feedbackForm.dart';
import 'package:udhaarkaroapp/pages/feedbackForm2.dart';
import 'package:udhaarkaroapp/pages/homePage.dart';
import 'package:udhaarkaroapp/pages/privacyPolicy.dart';
import 'package:udhaarkaroapp/pages/profilePage.dart';
import 'package:udhaarkaroapp/pages/userList.dart';


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
      initialRoute: "/home",
      routes: {
        "/home" : (context) => Home(),
        "/profilepage" : (context) => ProfilePage(),
        "/accountdetails" : (context) => AccountDetails(),
        "/privacypolicy" : (context) => PrivacyPolicy(),
        "/aboutus" : (context) => AboutUs(),
        "/feedbackform" : (context) => FeedbackForm(),
        "/feedbackform2" : (context) => FeedbackForm2(),
        "/userlist" : (context) => UsersList(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
