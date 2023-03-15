import 'package:flutter/material.dart';

class ButtonList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonIconList = Row(
      children: [
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), color: Colors.white),
            child: Icon(
              Icons.bookmark_outline,
              color: Colors.blue,
              size: 20.0,
            ),
            height: 30.0,
            width: 30.0,
            margin: EdgeInsets.only(left: 40.0)),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey.shade400),
            child: Icon(
              Icons.bookmark_outline,
              color: Colors.blue,
              size: 20.0,
            ),
            height: 30.0,
            width: 30.0,
            margin: EdgeInsets.only(left: 40.0)),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), color: Colors.white),
            child: Icon(
              Icons.add,
              color: Colors.blue,
              size: 40.0,
            ),
            height: 50.0,
            width: 50.0,
            margin: EdgeInsets.only(left: 40.0)),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey.shade400),
            child: Icon(
              Icons.email_outlined,
              color: Colors.blue,
              size: 20.0,
            ),
            height: 30.0,
            width: 30.0,
            margin: EdgeInsets.only(left: 40.0)),
        Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: Colors.grey.shade400),
            child: Icon(
              Icons.person_outline_sharp,
              color: Colors.blue,
              size: 20.0,
            ),
            height: 30.0,
            width: 30.0,
            margin: EdgeInsets.only(left: 40.0))
      ],
    );

    return Container(
      child: buttonIconList,
    );
  }
}
