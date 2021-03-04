import 'dart:io';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:udhaarkaroapp/constants/constants.dart';

class QRScanner extends StatefulWidget {
  final Function callback;

  QRScanner({@required this.callback});

  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode result;
  QRViewController controller;
  bool status = false;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      //controller.pauseCamera();
    } else if (Platform.isIOS) {
      //controller.resumeCamera();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: 200,
          child: QRView(
            key: qrKey,
            overlay: QrScannerOverlayShape(
                borderRadius: 10,
                borderColor: lightBlueColor,
                borderWidth: 10,
                borderLength: 30,
                cutOutSize: 250),
            onQRViewCreated: _onQRViewCreated,
          ),
        ),
        height10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  _toggleFlash(controller);
                },
                child: (!status)
                    ? Icon(
                        Icons.flash_on,
                        color: whiteColor,
                      )
                    : Icon(
                        Icons.flash_off,
                        color: whiteColor,
                      ))
          ],
        )
      ],
    );
  }

  void _toggleFlash(QRViewController controller) {
    this.controller = controller;
    controller.toggleFlash();
    setState(() => status = !status);
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      if (scanData != null) {
        controller.pauseCamera();
        widget.callback();
      }
      return;
    });
  }
}
