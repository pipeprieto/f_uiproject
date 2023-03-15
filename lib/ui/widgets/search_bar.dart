import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchBar();
  }
}

class _SearchBar extends State<SearchBar> {
  String text = "";

  void changeText(String texto) {
    setState(() {
      text = texto;
    });
  }

  void clearText() {
    setState(() {
      text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Container(
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: IconButton(
                  onPressed: this.clearText, icon: Icon(Icons.clear)),
              hintText: "Search...",
            ),
            onChanged: (String value) {
              this.changeText(value);
            },
          ),
        ),
        Container(
          child: Row(
            children: [
              Text(
                "${this.text}...",
                style: TextStyle(color: Colors.black54, fontSize: 22.0),
              )
            ],
          ),
          padding: EdgeInsets.only(top: 10.0, left: 20.0),
          decoration: BoxDecoration(color: Colors.grey.shade300),
        )
      ],
    );
  }
}
