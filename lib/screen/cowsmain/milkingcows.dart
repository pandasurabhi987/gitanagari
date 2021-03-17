import 'package:flutter/material.dart';
import 'package:flutter_gitanagari/screen/cowsmain/gauri.dart';
import 'package:flutter_gitanagari/screen/homepage/widgets/category_card.dart';
import 'package:flutter_gitanagari/screen/homepage/widgets/bottomnavbar.dart';

class MilkingCows extends StatelessWidget {
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
                  "Milking Cows! ",
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
                      .headline6
                      .apply(fontSizeFactor: 0.9),
                ),
              ),
            ],
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              crossAxisCount: 3,
              childAspectRatio: .85,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: <Widget>[
                CategoryCard(
                  title: "Gauri",
                  svgSrc: "assets/images/cows.jpg",
                  press: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Gauri()));
                  },
                ),
                CategoryCard(
                  title: "Lakshmi",
                  svgSrc: "assets/icons/Excrecises.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Tabby",
                  svgSrc: "assets/icons/Meditation.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Devahuti",
                  svgSrc: "assets/icons/yoga.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Sparkles",
                  svgSrc: "assets/icons/Hamburger.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Mohini",
                  svgSrc: "assets/icons/Hamburger.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Radhe Shyama",
                  svgSrc: "assets/icons/Hamburger.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Denise",
                  svgSrc: "assets/icons/Hamburger.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Tulasi",
                  svgSrc: "assets/icons/Hamburger.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Lily",
                  svgSrc: "assets/icons/Hamburger.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Mars",
                  svgSrc: "assets/icons/Hamburger.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Jackie",
                  svgSrc: "assets/icons/Hamburger.svg",
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
