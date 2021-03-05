import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class CustomPageTransitions {
  PageTransition bottomToTopTransition(Widget page, RouteSettings settings) {
    return PageTransition(
        child: page,
        type: PageTransitionType.bottomToTop,
        duration: Duration(milliseconds: 600),
        settings: settings);
  }

  PageTransition topToBottomTransition(Widget page, RouteSettings settings) {
    return PageTransition(
        child: page,
        type: PageTransitionType.topToBottom,
        duration: Duration(milliseconds: 600),
        settings: settings);
  }

  PageTransition scaleTransition(Widget page, RouteSettings settings) {
    return PageTransition(
        child: page,
        type: PageTransitionType.scale,
        duration: Duration(milliseconds: 600),
        settings: settings);
  }

  PageTransition sizeTransition(Widget page, RouteSettings settings) {
    return PageTransition(
        child: page,
        type: PageTransitionType.size,
        duration: Duration(milliseconds: 600),
        settings: settings,
        alignment: Alignment.center);
  }

  PageTransition fadeTransition(Widget page, RouteSettings settings) {
    return PageTransition(
        child: page,
        type: PageTransitionType.fade,
        duration: Duration(milliseconds: 600),
        settings: settings);
  }

  PageTransition rightToLeftFadeTransition(
      Widget page, RouteSettings settings) {
    return PageTransition(
        child: page,
        type: PageTransitionType.rightToLeftWithFade,
        duration: Duration(milliseconds: 600),
        settings: settings,
        alignment: Alignment.center);
  }
}
