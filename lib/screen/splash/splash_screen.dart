import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/screen1.PNG'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            top: 150.0,
            left: 10.0,
            right: 10.0,
            child: Image(
              image: AssetImage('assets/images/gitanagarilogo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
