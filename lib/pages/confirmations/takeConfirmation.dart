import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class TakeConfirmation extends StatefulWidget {
  @override
  _TakeConfirmationState createState() => _TakeConfirmationState();
}

class _TakeConfirmationState extends State<TakeConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: FlareActor("assets/successgreen.flr", alignment:Alignment.center, fit:BoxFit.contain, animation: "success",)
        ),
      ),
    );
  }
}
