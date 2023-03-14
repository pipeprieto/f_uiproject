import 'package:flutter/material.dart';
import './card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/alberta-g111bf6ec9_640.jpg"),
          CardImage("assets/img/aurora-g1569e428a_640.jpg"),
          CardImage("assets/img/mountains-g5fdc2760e_640.jpg"),
          CardImage("assets/img/mountains-g7ab16ebca_640.png")
        ],
      ),
    );
  }
}
