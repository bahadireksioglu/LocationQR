import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:qrgen/views/side_menu.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  //This widget place is the root my app
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'QR Map App',

      debugShowCheckedModeBanner: false,
      //Theme color my application
      home:HomePage(

      ),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(230,230,230, 1),
      appBar: AppBar(

        title: Text(
          'QR MAP APP',
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
        margin: const EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Row(),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "This application is very simple. If \nyou want use to scanner, you should \nhit QR Scanner Button in Side Menu.\nIf you want to use generator, you \nshould hit QR Generator Button in \nSide Menu.",
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,

                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 30, 90, 1)
                      ),
                    ),
                  ],
                )
              ],
            ),
            // QR Scanner Button
          ],
        ),
      ),
    );
  }
}