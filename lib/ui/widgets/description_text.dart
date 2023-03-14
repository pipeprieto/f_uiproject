import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:myapp/ui/widgets/button_blue.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final stars = Container(
      child: Row(children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        )
      ]),
      margin: EdgeInsets.only(right: 3.0, top: 383.0),
    );

    final paragraph = Container(
      margin: EdgeInsets.only(top: 10.0, left: 20.0),
      child: Text(
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16.0),
      ),
    );

    final description_stars = Row(
      children: [
        Container(
          margin: EdgeInsets.only(top: 380.0, left: 20.0, right: 20.0),
          child: Text(
            "Duwilli Ella",
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        stars,
        stars,
        stars,
        stars,
        stars
      ],
    );

    return Column(
      children: [description_stars, paragraph, ButtonBlue()],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
