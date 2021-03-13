import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/customClass/pageTransitions.dart';
import 'package:udhaarkaroapp/pages/authentication/signUp2.dart';
import 'package:udhaarkaroapp/pages/confirmations/giveAmountConfirmation.dart';
import 'package:udhaarkaroapp/pages/confirmations/takeAmountConfirmation.dart';
import 'package:udhaarkaroapp/pages/pages.dart';

class Routers {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {

      case '/signup':
        return CustomPageTransitions()
            .bottomToTopTransition(SignUp(), settings);
        break;

      case '/signup2':
        return CustomPageTransitions()
            .bottomToTopTransition(SignUp2(), settings);
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

      case '/takeamountconfirmation':
        return CustomPageTransitions()
            .bottomToTopTransition(TakeAmountConfirmation(), settings);
        break;

      case '/giveamountconfirmation':
        return CustomPageTransitions()
            .bottomToTopTransition(GiveAmountConfirmation(), settings);
        break;

      case '/givenamountdetails':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(GivenAmountDetails(), settings);
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
            .rightToLeftFadeTransition(AccountDetails(), settings);
        break;

      case '/privacypolicy':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(PrivacyPolicy(), settings);
        break;

      case '/aboutus':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(AboutUs(), settings);
        break;

      case '/feedbackform':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(FeedbackForm(), settings);
        break;

      case '/feedbackform2':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(FeedbackForm2(), settings);
        break;

      case '/userlist':
        return CustomPageTransitions()
            .rightToLeftFadeTransition(UsersList(), settings);

      default:
        return null;
    }
  }
}
