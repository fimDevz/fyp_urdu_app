import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:fyp_urdu_app/Screens/workScreen.dart';

class tutorialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff008000),
      body: ListView(
        children: [
          Text(
            "Numeric and Date Expression Detection",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0, color: Colors.black),
          ),
          SizedBox(
            height: 500.0,
            width: double.infinity,
            child: Carousel(
              images: [
                Image.asset(
                  'assets/img1.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/img2.png',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
                backgroundColor: Colors.green.shade900,
                child: Text(
                  "SKIP",
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
                elevation: 6.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return workPage();
                  }));
                }),
          )
        ],
      ),
    );
  }
}


