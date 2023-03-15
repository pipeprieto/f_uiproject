import 'package:flutter/material.dart';
import 'landscape_card.dart';

class LandscapeCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          LandscapeCard("assets/img/alberta-g111bf6ec9_640.jpg",
              "Knuckles Mountains Range", "A good place to visit", "Tourism"),
          LandscapeCard("assets/img/aurora-g1569e428a_640.jpg",
              "Knuckles Mountains Range", "A good place to visit", "Tourism"),
          LandscapeCard("assets/img/mountains-g5fdc2760e_640.jpg",
              "Knuckles Mountains Range", "A good place to visit", "Tourism"),
          LandscapeCard("assets/img/mountains-g7ab16ebca_640.png",
              "Knuckles Mountains Range", "A good place to visit", "Tourism")
        ],
      ),
      margin: EdgeInsets.only(top: 230.0),
    );
  }
}
