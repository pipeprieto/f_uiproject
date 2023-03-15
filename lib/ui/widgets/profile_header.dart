import 'package:flutter/material.dart';
import 'package:myapp/ui/widgets/button_list.dart';
import 'package:myapp/ui/widgets/profile_info.dart';
import 'gradient_background.dart';
import 'landscape_card_list.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        GradientBackground("Profile"),
        Column(
          children: [
            ProfileInfo(
                "assets/img/people.jpg", "Pathum Zoo", "pathumzoo1@gmail.com"),
            ButtonList(),
          ],
        ),
        LandscapeCardList(),
      ],
    );
  }
}
// LandscapeCardList(),