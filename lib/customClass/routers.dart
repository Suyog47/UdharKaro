import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/customClass/pageTransitions.dart';
import 'package:udhaarkaroapp/pages/pages.dart';

class Routers {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case '/signup':
        return CustomPageTransitions()
            .bottomToTopTransition(SignUp(), settings);
        break;

      case '/login':
        return CustomPageTransitions().bottomToTopTransition(Login(), settings);
        break;

      case '/forgotpassword':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(ForgotPassword(), settings);
        break;

      case '/newpassword':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(NewPassword(), settings);
        break;

      case '/verification':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(Verification(), settings);
        break;

      case '/qrscanner':
        return CustomPageTransitions()
            .sizeTransition(QRCodeScanner(), settings);
        break;

      case '/enteramount':
        return CustomPageTransitions()
            .topToBottomTransition(EnterAmount(), settings);
        break;

      case '/givenamountdetails':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(PaidAmountDetails(), settings);
        break;

      case '/takenamountdetails':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(TakenAmountDetails(), settings);
        break;

      case '/mainscreen':
        return CustomPageTransitions().fadeTransition(MainScreen(), settings);
        break;

      case '/userdetails':
        return CustomPageTransitions().fadeTransition(UserDetails(), settings);
        break;

      case '/accountdetails':
        return CustomPageTransitions()
            .scaleTransition(AccountDetails(), settings);
        break;

      case '/privacypolicy':
        return CustomPageTransitions()
            .scaleTransition(PrivacyPolicy(), settings);
        break;

      case '/aboutus':
        return CustomPageTransitions().scaleTransition(AboutUs(), settings);
        break;

      case '/feedbackform':
        return CustomPageTransitions()
            .scaleTransition(FeedbackForm(), settings);
        break;

      case '/feedbackform2':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(FeedbackForm2(), settings);
        break;

      case '/userlist':
        return CustomPageTransitions().scaleTransition(UsersList(), settings);

      default:
        return null;
    }
  }
}
