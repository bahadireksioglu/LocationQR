import 'package:barcode_scan_fix/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:qrgen/locator/location_ops.dart';
import 'package:qrgen/views/side_menu.dart';

class ScanQR extends StatefulWidget{
  @override
  _ScanQRState createState() => _ScanQRState();
}

class _ScanQRState extends State<ScanQR>{
  String qrCodeRes = "Not Scanned";
  var locationLink = GetLocationLink();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
          'QR SCAN',
          style: TextStyle(
              color: Color.fromRGBO(230,230,230, 1),
              fontWeight: FontWeight.bold
          ),
        ),

        backgroundColor: Color.fromRGBO(0, 30, 90, 1),
        centerTitle: true,
      ),
      drawer: SideMenu(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Button to scan QR Code
            FlatButton(
              padding: EdgeInsets.all(15),
              onPressed: () async {
                String codeScanner = await BarcodeScanner.scan();
                locationLink.runGoogleMapsByUrl(codeScanner);
              },
              color: Color.fromRGBO(0, 30, 90, 1),
              child: Text(
                "SCAN QR CODE",
                style: TextStyle(
                    color: Color.fromRGBO(230, 230, 230, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),

              ),
            ),
          ],
        ),
      ),
    );
  }
}