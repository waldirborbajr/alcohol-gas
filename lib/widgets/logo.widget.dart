import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 45),
        Image.asset(
          "assets/images/aog-white.png",
          height: 65,
        ),
        SizedBox(height: 30),
        Text(
          "Alcohol or Gas",
          style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontFamily: "Big Shoulders Display"),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          " v1.0.0",
          style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontFamily: "Big Shoulders Display"),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
