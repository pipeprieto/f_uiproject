import 'package:flutter/material.dart';

class GradientBackground extends StatelessWidget {
  String title = "Bienvenido";

  GradientBackground(this.title);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 300.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.blue, Colors.blue.shade900],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp)),
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30.0),
      ),
      alignment: Alignment(-0.9, -0.6),
    );
  }
}
