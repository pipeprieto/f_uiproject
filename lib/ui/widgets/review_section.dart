import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String review;
  String pathImage;
  String name;

  Review(this.pathImage, this.name, this.review);

  @override
  Widget build(BuildContext context) {
    final image = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
      width: 80.0,
      height: 80.0,
    );
    final stars = Container(
      child: Row(children: [
        Icon(
          Icons.star,
          color: Colors.amber,
        )
      ]),
      margin: EdgeInsets.only(right: 3.0, top: 10.0),
    );

    final reviewInfo = Column(
      children: [
        Row(
          children: [
            Container(
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: "Lato",
                    fontWeight: FontWeight.w900),
              ),
              margin: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
            )
          ],
        ),
        Row(
          children: [
            Container(
              child: Text(
                "1 review - 5 photos",
                style: TextStyle(fontWeight: FontWeight.w100),
              ),
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            ),
            stars,
            stars,
            stars,
            stars,
            stars
          ],
        ),
        Row(
          children: [
            Container(
              child: Text(
                review,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              margin: EdgeInsets.only(left: 20.0, top: 10.0),
            )
          ],
        )
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );

    final reviewSection = Row(
      children: [image, reviewInfo],
    );
    return reviewSection;
  }
}
