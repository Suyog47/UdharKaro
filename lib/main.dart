import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/About_Us.dart';
import 'package:udhaarkaroapp/Account_Details.dart';
import 'package:udhaarkaroapp/Feedback_Form.dart';
import 'package:udhaarkaroapp/Feedback_Form2.dart';
import 'package:udhaarkaroapp/Home.dart';
import 'package:udhaarkaroapp/Privacy_Policy.dart';
import 'package:udhaarkaroapp/Profile_Page.dart';
import 'package:udhaarkaroapp/Users_List.dart';


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
      initialRoute: "/profilepage",
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
