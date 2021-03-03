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
                  color: blackColor,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
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
                      height10,
                      height10,
                      Text("Scan any QR Code", style: h3_Light),
                      height10,
                      height10,
                      height10,
                      Container(
                          height: 250,
                          width: 300,
                          child: Center(child: QRScanner(
                            callback: () {
                              Navigate().toEnterAmount(
                                  context, {"type": _data["type"]});
                            },
                          ))),
                      height5,
                      Text(
                        "Place the QR code inside Scanner Area",
                        style: TextStyle(color: lightBlueColor),
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                      height5,
                    ],
                  ),
                ),
                height10,
                Form(
                  key: _formKey,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Text("OR",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        height10,
                        PhoneTextField(
                          decoration: inputDecor2,
                          label: "Enter Phone Number",
                          callback: (value) {
                            setState(() => _num = value);
                          },
                        ),
                        height10,
                        height10,
                        Center(
                            child: SubmitButton(
                          text: "Proceed",
                          width: 200,
                          height: 50,
                          color: lightBlueColor,
                          elevation: 10,
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
