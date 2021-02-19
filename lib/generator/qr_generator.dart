import 'package:flutter/material.dart';
import 'dart:async';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrgen/locator/location_ops.dart';
import 'package:qrgen/views/side_menu.dart';

class GenerateQR extends StatefulWidget {
  @override
  _GenerateQRState createState() => _GenerateQRState();
}

class _GenerateQRState extends State<GenerateQR>{
  String qrData = "";
  var locationLink = GetLocationLink();
  final qrDataFeed = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(230,230,230, 1),
      appBar: AppBar(

        title: Text(
        'QR GENERATE',
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
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              QrImage(data: qrData),
              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                // Button for generating QR Code
                child: FlatButton(
                  color: Color.fromRGBO(0, 30, 90, 1),
                  height: 50,
                  onPressed: () async {
                    qrDataFeed.text=locationLink.returnUrl();
                    if(qrDataFeed.text.isEmpty){
                      setState(() {
                        qrData = "";
                      });
                    }

                    else{
                      setState(() {
                        qrData = qrDataFeed.text;
                      });
                    }
                  },

                  child: Text(
                    "GENERATE QR CODE",
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
              ),

            ],
          ),
        ),
      ),
    );
  }
}