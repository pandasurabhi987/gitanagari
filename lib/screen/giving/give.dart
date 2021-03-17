import 'package:flutter/material.dart';
//import 'package:flutter_gitanagari/screen/homepage/widgets/category_card.dart';
//import 'package:flutter_gitanagari/screen/homepage/widgets/bottomnavbar.dart';

class Giving extends StatefulWidget {
  Giving({
    Key key,
  }) : super(key: key);
  @override
  _Giving createState() => _Giving();
}

class _Giving extends State<Giving> {
  String valueChoose;
  List listitem = ["Gauri", "Radha Shyama"];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                //padding: EdgeInsets.all(16.0),
                // Here the height of the container is 45% of our total height
                height: size.height * .25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                  color: Colors.blue[100],
                ),
              ),
              Positioned(
                top: 50.0,
                left: 30.0,
                child: Text(
                  "Giving ",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
              Positioned(
                top: 105.0,
                left: 30.0,
                child: Text(
                  "We consider our cows and oxen to be \nbeloved family members with as much \npersonality and value as their human \ncounterparts.",
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      .apply(fontSizeFactor: 0.5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            "Choose a Cow: ",
            style: TextStyle(
              fontSize: 24.0,
              //color: Colors.white,
            ),
          ),
          DropdownButton(
            hint: Text("hello"),
            value: valueChoose,
            onChanged: (newValue) {
              setState(() {
                valueChoose = newValue;
              });
            },
            items: listitem.map((valueItem) {
              return DropdownMenuItem(
                value: valueItem,
                child: Text(valueItem),
              );
            }).toList(),
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            "Payment Details: ",
            style: TextStyle(
              fontSize: 24.0,
              //color: Colors.white,
            ),
          ),
        ],
      ),
      //bottomNavigationBar: BottomNavBar(),
    );
  }
}
