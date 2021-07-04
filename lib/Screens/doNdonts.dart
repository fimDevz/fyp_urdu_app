import 'package:flutter/material.dart';
class doNdonts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Container(
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
                  child:Column(
                    children: [
                      Text(
                        "Do's:",
                        textScaleFactor: 2.5,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          letterSpacing: 1.5,
                          color: Colors.yellowAccent,
                        ),
                      ),
                      Text('1. Pass Urdu Text to detect.\n2. You can also Copy Paste the Text\n'
                          '3. To understand the working of App please check the tutorial\n4.Click on the Detect button to get highlighted output.\n'
                          '4. To get amounts of detected values please check out the Counter Screen',
                        textScaleFactor: 1.5,style: TextStyle(color: Colors.white),)
                    ],
                  )),
              Divider(
                thickness: 12.0,
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child:Column(
                    children: [
                      Text(
                          "Dont's:",
                          textScaleFactor: 2.5,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            letterSpacing: 1.5,
                            color: Colors.yellowAccent,
                          )
                      ),
                      Text("1. Don\'t pass empty String in the Text field.\n2. Don\'t use multiple languages in one text field.\n3. Don\'t use multiple lines in one text field."
                          ,textScaleFactor: 1.5,style: TextStyle(color: Colors.white)),
                      Text("\nTHANK YOU FOR READING THIS DOCUMENT",textScaleFactor: 1.5,textAlign: TextAlign.center,style: TextStyle(color: Colors.amberAccent)),
                    ],
                  ))
            ],
          ),
        ),
      )
      ,
    );
  }
}
