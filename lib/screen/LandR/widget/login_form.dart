import 'package:flutter/material.dart';
import 'package:flutter_gitanagari/screen/LandR/widget/txtfield.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
          InputTextField(
            label: 'Name',
            onChange: (value) {},
          ),
          SizedBox(
            height: 16,
          ),
          InputTextField(
            label: 'Email',
            onChange: (value) {},
          ),
          SizedBox(
            height: 16,
          ),
          InputTextField(
            label: 'Password',
            password: true,
            onChange: (value) {},
          ),
        ],
      ),
    );
  }
}
