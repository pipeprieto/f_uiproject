import 'package:flutter/material.dart';

class ButtonBlue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      child: Container(
        child: Center(
            child: Text(
          "Navigate",
          style: TextStyle(
              color: Colors.white,
              fontFamily: "Lato",
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        )),
        margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            gradient: LinearGradient(
                colors: [Colors.blue.shade900, Colors.blue],
                begin: FractionalOffset(0.7, 0.0),
                end: FractionalOffset(1.0, 0.6),
                stops: [0.0, 0.3],
                tileMode: TileMode.clamp)),
        height: 50.0,
        width: 180.0,
      ),
    );
  }
}
