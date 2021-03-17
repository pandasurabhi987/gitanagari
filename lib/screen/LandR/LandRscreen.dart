import 'package:flutter/material.dart';
import 'package:flutter_gitanagari/screen/LandR/widget/buttons.dart';
import 'package:flutter_gitanagari/screen/LandR/widget/login_form.dart';
import 'package:flutter_gitanagari/screen/LandR/widget/reg.dart';

class LandRScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            //card
            top: 110.0,
            left: 10.0,
            right: 10.0,
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/gitanagarilogo.png'),
                  ),
                  LoginAndRegister(),
                  LoginForm(),
                  CheckboxListTile(
                    title: Text(
                        "I would like to recieve email updates from the farm!",
                        style: TextStyle(fontSize: 15)),
                    value: true,
                    onChanged: null,
                  ),
                  LoginButton(),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
