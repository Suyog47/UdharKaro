import 'package:flutter/material.dart';
import 'package:udhaarkaroapp/constants/constants.dart';
import 'package:udhaarkaroapp/customClass/navigations.dart';
import 'package:udhaarkaroapp/widgets/buttons.dart';
import 'package:udhaarkaroapp/widgets/qrScanner.dart';
import 'package:udhaarkaroapp/widgets/textInputField.dart';

class QRCodeScanner extends StatefulWidget {
  @override
  _QRCodeScannerState createState() => _QRCodeScannerState();
}

class _QRCodeScannerState extends State<QRCodeScanner> {
  String _num;
  Map _data = {};
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _data = ModalRoute.of(context).settings.arguments;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 0.70 * displayHeight(context),
                  color: blackColor,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.cancel,
                              color: whiteColor,
                              size: 30,
                            )),
                      ),
                      Text("Scan any QR Code", style: h3_Light),
                      height10,
                      Container(
                          child: Column(
                            children: [
                              QRScanner(
                                callback: () {
                                  Navigate().toEnterAmount(
                                      context, {"type": _data["type"]});
                                },
                              ),
                              height10,
                              Text(
                                "Place the QR code inside Scanner Area",
                                style: TextStyle(color: lightOrangeColor),
                                softWrap: true,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
                height5,
                Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text("OR",
                            style: t18_Dark),
                        height5,
                        PhoneTextField(
                          decoration: inputDecor2,
                          label: "Enter Phone Number",
                          callback: (value) {
                            setState(() => _num = value);
                          },
                        ),
                        height10,
                        height5,
                        Center(
                            child: SubmitButton(
                          text: "Proceed",
                          width: 200,
                          height: 45,
                          color: lightBlueColor,
                          elevation: 5,
                          formKey: _formKey,
                          callback: () {
                            Navigate().toEnterAmount(
                                context, {"type": _data["type"]});
                          },
                        ))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
