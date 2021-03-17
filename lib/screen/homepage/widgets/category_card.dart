import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final Function color;

  const CategoryCard({
    Key key,
    this.svgSrc,
    this.title,
    this.press,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100.0,
        height: 100.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: press,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Spacer(),
                      //SvgPicture.asset(svgSrc),
                      Spacer(),
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
