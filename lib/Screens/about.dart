import 'package:flutter/material.dart';

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 35.0),
        color:Color(0xff008000),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(10),
                child:Text(
                "Android App For Urdu Numeric And Date Expressions Detection And annotation",
                textScaleFactor: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                ))),
            Padding(
                padding: EdgeInsets.all(10),
                child:Text(
                "This App was built for detecting numeric and date expression in Urdu language\nVersion: 1.0.0",
              textScaleFactor: 1.5,
              textAlign: TextAlign.center,
                style: TextStyle(
                  letterSpacing: 1.5,
                  color: Colors.white,
                )
            )),
          ],
        ),
      ),
    );
  }
}
