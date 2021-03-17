import 'package:flutter_gitanagari/models/user.dart';
import 'package:flutter_gitanagari/screen/authenticate/authenticate.dart';
import 'package:flutter_gitanagari/screen/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    print(user);

    // return either the Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      return HomePage();
    }
  }
}
