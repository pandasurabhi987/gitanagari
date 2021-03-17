import 'package:flutter/material.dart';
import 'package:flutter_gitanagari/screen/homepage/widgets/bottomnavbar.dart';
import 'package:flutter_gitanagari/screen/giving/give.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:flutter_gitanagari/screen/splash/splash_screen.dart';

class Gauri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      //bottomNavigationBar: BottomNavBar(),
      body: Column(
        children: <Widget>[
          Stack(
            overflow: Overflow.visible,
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                height: size.height * .30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: Colors.green[100],
                ),
              ),
              Positioned(
                bottom: -80,
                child: CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/IMG_1762.jpg")),
              ),
            ],
          ),
          SizedBox(height: 40),
          FlatButton.icon(
            splashColor: Colors.green,
            onPressed: () {
              //print("centrebutton");
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Giving()));
            },
            icon: Icon(Icons.favorite, color: Colors.pink[200]),
            label: Text(
              "SUBSCRIBE",
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.white,
              ),
            ),
            color: Colors.red,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          ),
          SizedBox(height: 20),
          Container(
            child: Center(
              child: Text(
                "Gauri",
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
          ),
          ListTile(
            title: (Text("About Gauri",
                style: TextStyle(fontWeight: FontWeight.bold))),
            subtitle: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
          ),
          SizedBox(height: 10),
          Container(
            width: 350,
            height: 300,
            child: WebView(
                initialUrl:
                    "https://photos.google.com/share/AF1QipOvgKYv7KXN5gE0grqta3pfVPm413kldC6cnfNfgVrJbQO_3UaKF7EURpjoUVexxQ?key=NGk4aUttX3pBTnVXeGlxcGhVOHdrWlpzc2FUQzRn",
                javascriptMode: JavascriptMode.unrestricted),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
