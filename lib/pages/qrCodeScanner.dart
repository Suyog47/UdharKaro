import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:udhaarkaroapp/constants/colors.dart';
import 'package:udhaarkaroapp/constants/heights.dart';
import 'package:udhaarkaroapp/constants/textStyles.dart';
import 'package:udhaarkaroapp/widgets/qrScanner.dart';

class QRCodeScanner extends StatefulWidget {
  @override
  _QRCodeScannerState createState() => _QRCodeScannerState();
}

class _QRCodeScannerState extends State<QRCodeScanner> {

  String _num;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
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
                            onTap:(){
                              Navigator.pop(context);
                            },
                            child: Icon(Icons.cancel, color: whiteColor, size: 30,)),
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
                          child: Center(
                              child: QRScanner())
                      ),

                      height5,

                      Text("Place the QR code inside Scanner Area", style: TextStyle(color: lightBlueColor), softWrap: true, textAlign: TextAlign.center,),
                      height5,
                    ],
                  ),
                ),

                height10,

                Form(
                  key: _formkey,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                     child: Column(
                       children: [
                         Text("OR", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),

                         height10,

                         TextFormField(
                           decoration: InputDecoration(
                             labelText: "Enter Mobile Number",
                             labelStyle: hint_Dark
                           ),
                           inputFormatters: [
                             FilteringTextInputFormatter.digitsOnly
                           ],
                           keyboardType: TextInputType.number,
                           maxLength: 10,
                           validator: (val) {
                             if (val.length == 10 && int.parse(val[0]) >= 7) {
                               return null;
                             }
                             return "Enter valid phone number";
                           },
                           cursorColor: redColor,
                           onChanged: (val) => _num = val,
                         ),

                         height5,

                         Center(
                           child: InkWell(
                             onTap: () {
                               if(_formkey.currentState.validate()){
                                 print(_num);
                               }
                             },
                             child: Container(
                               padding: EdgeInsets.symmetric(horizontal: 65, vertical: 10),
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 color: darkBlueColor,
                               ),
                               child: Text("Proceed",
                                   style: TextStyle(color: whiteColor, fontSize: 21)),
                             ),
                           ),
                         )
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
