import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'gradient_background.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(children: [
      GradientBackground("Popular"),
      CardImageList()
    ],);
  }

}