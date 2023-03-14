import 'package:flutter/material.dart';
import '../widgets/description_text.dart';
import '../widgets/header.dart';
import '../widgets/review_list.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children: [
      ListView(children: [Description(), ReviewList(4)]),
      Header(),
    ]);
  }
}
