import 'package:flutter/material.dart';
import 'package:flutter_gitanagari/screen/homepage/widgets/category_card.dart';
import 'package:flutter_gitanagari/screen/homepage/widgets/bottomnavbar.dart';

class CowMain extends StatelessWidget {
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
                  "Meet Our Cows! ",
                  style: Theme.of(context)
                      .textTheme
                      .display1
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
                      .display1
                      .apply(fontSizeFactor: 0.5),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              crossAxisCount: 2,
              childAspectRatio: .85,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: <Widget>[
                CategoryCard(
                  title: "Milking",
                  svgSrc: "assets/icons/Hamburger.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Retired Cows",
                  svgSrc: "assets/icons/Excrecises.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Retired Oxen",
                  svgSrc: "assets/icons/Meditation.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Oxen In Training",
                  svgSrc: "assets/icons/yoga.svg",
                  press: () {},
                ),
              ],
            ),
          ),
          Container(
            height: 70,
            child: BottomNavBar(),
          )
        ],
      ),
    );
  }
}
