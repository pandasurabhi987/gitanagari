import 'package:flutter/material.dart';
import 'package:flutter_gitanagari/screen/homepage/widgets/user_model.dart';
import 'package:flutter_gitanagari/screen/homepage/widgets/category_card.dart';
import 'package:flutter_gitanagari/screen/homepage/widgets/bottomnavbar.dart';

import 'package:flutter_gitanagari/services/auth.dart';

class HomePage extends StatelessWidget {
  final AuthService _auth = AuthService();

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
                  "Hello Surabhi, ",
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(fontWeight: FontWeight.w900),
                ),
              ),
              Positioned(
                top: 30.0,
                right: 20.0,
                child: FlatButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('Logout'),
                  onPressed: () async {
                    await _auth.signOut();
                  },
                ),
              ),
              Positioned(
                top: 105.0,
                left: 30.0,
                child: Text(
                  "Welcome to The Gita Nagari Eco Farm and \nSanctuary App! Meet our lovely cows, get \nupdates on them, and browse our media.",
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .apply(fontSizeFactor: 0.5),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
            child: Row(
              children: [
                Text(
                  'Notifications',
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .apply(fontSizeFactor: 0.75),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            child: ListView.builder(
              padding: EdgeInsets.all(0),
              itemCount: ChatModel.dummyData.length,
              itemBuilder: (context, index) {
                ChatModel _model = ChatModel.dummyData[index];
                return Column(
                  children: <Widget>[
                    Divider(
                      height: 2.0,
                      thickness: 1,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 24.0,
                        backgroundImage: NetworkImage(_model.avatar),
                      ),
                      title: Row(
                        children: <Widget>[
                          Text(_model.name),
                          SizedBox(
                            width: 16.0,
                          ),
                        ],
                      ),
                      subtitle: Text(_model.message),
                    ),
                  ],
                );
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
            child: Row(
              children: [
                Text(
                  'Explore',
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .apply(fontSizeFactor: 0.75),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              crossAxisCount: 3,
              childAspectRatio: .85,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              children: <Widget>[
                CategoryCard(
                  title: "Who We Are",
                  svgSrc: "assets/icons/Hamburger.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Instagram",
                  svgSrc: "assets/icons/Excrecises.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "CSA",
                  svgSrc: "assets/icons/Meditation.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Events",
                  svgSrc: "assets/icons/yoga.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Website",
                  svgSrc: "assets/icons/yoga.svg",
                  press: () {},
                ),
                CategoryCard(
                  title: "Facebook",
                  svgSrc: "assets/icons/yoga.svg",
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
