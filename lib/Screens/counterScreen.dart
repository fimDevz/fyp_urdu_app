import 'package:flutter/material.dart';

class counterpage extends StatefulWidget {
  @override
  _counterpageState createState() => _counterpageState();
}

class _counterpageState extends State<counterpage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Numeric and Date Expression Detection"),
          backgroundColor: Colors.lightGreen.shade300,
        ),
        body:  Table(
            children: [
              TableRow(children: [
                Container(
                  child: Text(
                    "Detected Text",
                    style: TextStyle(
                      fontSize: 1.5,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Detected Type",
                    style: TextStyle(
                      fontSize: 1.5,
                    ),
                  ),
                ),
                Container(
                  height: 300,
                  color: Colors.red,
                  child: Text(
                    "Detected Times",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 200,
                    ),
                  ),
                ),
              ])
            ],
          ),
        ),
    );
  }
}
