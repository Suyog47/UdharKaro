import 'package:flutter/material.dart';
import 'constants.dart';


const inputDecor = InputDecoration(
  labelStyle: hint_Dark,
);

const inputDecor2 = InputDecoration(
  fillColor: whiteColor,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide:BorderSide(
        color: lightBlueColor, width: 1
    ),
    borderRadius:
    BorderRadius.all(Radius.circular(12),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: redColor, width: 1,
    ),
    borderRadius:
    BorderRadius.all(Radius.circular(12),
    ),
  ),
);

