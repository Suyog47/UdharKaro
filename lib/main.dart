import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        "/mainscreen" : (context) => MainScreen(),   //MainScreen
        "/home" : (context) => Home(), //Home
        "/userdetails" : (context) => UserDetails(), //UserDetails
        "/signup" : (context) => SignUp(), //SignUp
        "/login" : (context) => Login(), //Login
        "/forgotpassword" : (context) => ForgotPassword(),  //ForgotPassword
        "/newpassword" : (context) => NewPassword(), //New Password
        "/verification" : (context) => Verification(), //Verification
        "/qrscanner" : (context) => QRCodeScanner(), //QRScanner
        "/enteramount" : (context) => EnterAmount(),//Enter Amount
        "/givenamountdetails" : (context) => PaidAmountDetails(), //GivenAmountDetails
        "/takenamountdetails" : (context) => TakenAmountDetails(), // TakenAmountDetails
        "/notification" : (context) => Notifications(), //Notifications
        "/profilepage" : (context) => ProfilePage(), //ProfilePage
        "/accountdetails" : (context) => AccountDetails(), //AccountDetails
        "/privacypolicy" : (context) => PrivacyPolicy(), //PrivacyPolicy
        "/aboutus" : (context) => AboutUs(), //AboutUs
        "/feedbackform" : (context) => FeedbackForm(),//FeedbackForm
        "/feedbackform2" : (context) => FeedbackForm2(),//FeedbackForm2
        "/userlist" : (context) => UsersList(),//UserList
      },
      debugShowCheckedModeBanner: false,  //Disable debug label
    );
  }
}
