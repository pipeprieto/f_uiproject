import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  String pathImage = "assets/img/people.jpg";
  String profileName = "Pathum Zoo";
  String profileEmail = "pathumzoo1@gmail.com";

  ProfileInfo(this.pathImage, this.profileName, this.profileEmail);

  @override
  Widget build(BuildContext context) {
    final imageContainer = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
      width: 80.0,
      height: 80.0,
    );

    final profileInfo = Column(
      children: [
        Row(
          children: [
            Container(
              child: Text(
                this.profileName,
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              margin: EdgeInsets.only(left: 40.0, top: 35.0),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.center,
        ),
        Row(
          children: [
            Container(
              child: Text(
                this.profileEmail,
                style:
                    TextStyle(fontWeight: FontWeight.w100, color: Colors.white),
              ),
              margin: EdgeInsets.only(left: 40.0, right: 20.0),
            ),
          ],
        ),
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );

    final profileContent = Container(
      child: Row(
        children: [imageContainer, profileInfo],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      height: 200.0,
      margin: EdgeInsets.only(top: 80.0, left: 30.0),
    );

    return profileContent;
  }
}
