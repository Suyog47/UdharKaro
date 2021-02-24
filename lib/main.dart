import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'file:///D:/flutterProjects/udhaarkaro_app/lib/Pages/About_Us.dart';
import 'file:///D:/flutterProjects/udhaarkaro_app/lib/Pages/Account_Details.dart';
import 'file:///D:/flutterProjects/udhaarkaro_app/lib/Pages/Feedback_Form.dart';
import 'file:///D:/flutterProjects/udhaarkaro_app/lib/Pages/Feedback_Form2.dart';
import 'file:///D:/flutterProjects/udhaarkaro_app/lib/Pages/Home.dart';
import 'file:///D:/flutterProjects/udhaarkaro_app/lib/Pages/Privacy_Policy.dart';
import 'file:///D:/flutterProjects/udhaarkaro_app/lib/Pages/Profile_Page.dart';
import 'file:///D:/flutterProjects/udhaarkaro_app/lib/Pages/Users_List.dart';


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
