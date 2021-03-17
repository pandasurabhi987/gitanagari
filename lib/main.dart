import 'package:flutter/material.dart';
import 'package:flutter_gitanagari/screen/cowsmain/gauri.dart';
import 'package:flutter_gitanagari/screen/homepage/widgets/bottomnavbar.dart';
import 'package:flutter_gitanagari/screen/wrapper.dart';
import 'package:flutter_gitanagari/services/auth.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gitanagari/models/user.dart';

import 'package:flutter_gitanagari/screen/LandR/LandRscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        title: 'Gita Nagari',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.green[50],
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //home: Wrapper(),
        home: BottomNavBar(),
        //home: Gauri(),
      ),
    );
  }
}
