import 'package:flutter/material.dart';
import './floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String pathImage;

  CardImage(this.pathImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final card = Container(
      height: 350.0,
      width: 250.0,
      margin: EdgeInsets.only(top: 80.0, left: 20.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                offset: Offset(0.0, 0.7),
                blurRadius: 15.0)
          ]),
    );

    return Stack(
      children: [card, FloatingActionButtonGreen()],
      alignment: Alignment(0.9, 1.1),
    );
  }
}
