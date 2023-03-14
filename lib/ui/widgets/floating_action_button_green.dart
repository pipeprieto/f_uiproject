import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool isPressed = false;

  void pressedButton() {
    Scaffold.of(context)
        .showSnackBar(SnackBar(content: Text("Added to favourites")));
    setState(() {
      isPressed = !this.isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: FloatingActionButton(
        backgroundColor: Colors.green.shade800,
        mini: true,
        onPressed: this.pressedButton,
        child: isPressed ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
        tooltip: "Favourites",
      ),
    );
  }
}
