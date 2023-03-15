import 'package:flutter/material.dart';
import 'package:myapp/ui/widgets/floating_action_button_green.dart';

class LandscapeCard extends StatelessWidget {
  String pathImage = 'assets/img/alberta-g111bf6ec9_640.jpg';
  String description = "";
  String title = "Knuckles Mountain Range";
  String activities = "Tourism";

  LandscapeCard(this.pathImage, this.title, this.description, this.activities);

  @override
  Widget build(BuildContext context) {
    final imageContainer = Container(
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(pathImage),
            fit: BoxFit.cover,
          ),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                offset: Offset(0.0, 0.7),
                blurRadius: 15.0)
          ]),
      height: 200.0,
      width: 350.0,
      margin: EdgeInsets.only(top: 20.0),
    );

    final content = Container(
      height: 100.0,
      width: 280.0,
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black38,
                offset: Offset(0.0, 0.7),
                blurRadius: 15.0)
          ]),
      child: Column(children: [
        Container(
          child: Row(children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  fontFamily: "Lato"),
            )
          ]),
          margin: EdgeInsets.only(top: 10.0, left: 16.0),
        ),
        Container(
          child: Row(
            children: [
              Text(
                description,
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          margin: EdgeInsets.only(top: 8.0, left: 16.0),
        ),
        Container(
          child: Row(
            children: [
              Text(
                activities,
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          margin: EdgeInsets.only(left: 16.0),
        )
      ]),
    );

    final button = Container(
      child: FloatingActionButtonGreen(),
      alignment: Alignment(0.6, 0.0),
    );

    return Container(
      child: Stack(
        children: [imageContainer, content, button],
        alignment: Alignment(0.1, 1.8),
      ),
      margin: EdgeInsets.only(bottom: 50.0),
    );
  }
}
