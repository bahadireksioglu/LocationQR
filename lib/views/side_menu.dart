import 'package:flutter/material.dart';
import 'package:qrgen/generator/qr_generator.dart';
import 'package:qrgen/scanner/qr_scanner.dart';

import '../main.dart';

class SideMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,

              padding: EdgeInsets.only(top:20),
              color: Color.fromRGBO(0, 30, 90, 1),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Text(
                        'MENÜ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),

                    SizedBox(height: 30,),
                    ListTile(
                      title: Text(
                        'Main Page',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ),

                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                    ),
                    ListTile(
                      title: Text(
                        'QR Scanner',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ),

                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ScanQR()));
                      },
                    ),

                    ListTile(
                      title: Text(
                        'QR Generator',
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>GenerateQR()));
                      },
                    ),

                    SizedBox(height: 10,)
                  ],
                ),
              ),
            )
          ],
        )
    );
  }
}