import 'dart:async';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';

class TakeAmountConfirmation extends StatefulWidget {
  @override
  _TakeAmountConfirmationState createState() => _TakeAmountConfirmationState();
}

class _TakeAmountConfirmationState extends State<TakeAmountConfirmation> {
  Timer _timer;
  int _start = 10;
  Map data = {};

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          timer.cancel();
          if (mounted) {
            Navigate().toTakenAmount(context, {"name" : data["name"], "amount" : data["amount"]});
          }
        } else {
          if (mounted) {
            setState(() => _start--);
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    (_start == 10) ? startTimer() : null;

    return Scaffold(
      body: Container(
        color: lightBlueColor,
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Taking Udhaar from", style: t22_Light,),
                height10,
                Text(data['name'], style: h2_Light,),
                height10,
                Text("Amount:- Rs ${data['amount'].toString()}", style: t18_Light,),
                height60,

                (_start <= 1)
                    ? Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 250,
                    child: FlareActor(
                      "assets/successgreen.flr",
                      alignment: Alignment.center,
                      animation: "success",
                      fit: BoxFit.contain,
                      callback: (value) {
                        print(value);
                      },
                    ))
                    : Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 250,
                    child: FlareActor(
                      "assets/loading.flr",
                      alignment: Alignment.center,
                      animation: "loading",
                      fit: BoxFit.contain,
                    )),
                height10,
                (_start > 1)
                    ? Text("Please wait for the permission to get granted",
                    style: t16_Light, textAlign: TextAlign.center)
                    : Text("Permission Granted",  style: t16_Light)
              ],
            )),
      ),
    );
  }
}
