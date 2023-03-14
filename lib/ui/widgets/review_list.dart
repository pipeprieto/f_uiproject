import 'package:flutter/material.dart';
import './review_section.dart';

class ReviewList extends StatelessWidget {
  int reviewsQuantity;

  ReviewList(this.reviewsQuantity, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final reviewList = Column(
      children: [
        Container(
            child: Text(
              "All reviews",
              style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.bold),
            ),
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 20.0)),
        Review("assets/img/people.jpg", "Varuna Yasas", "Muy buen servicio"),
        Review("assets/img/people.jpg", "Varuna Yasas", "Muy buen servicio"),
        Review("assets/img/people.jpg", "Varuna Yasas", "Muy buen servicio"),
        Review("assets/img/people.jpg", "Varuna Yasas", "Muy buen servicio")
      ],
      crossAxisAlignment: CrossAxisAlignment.start,
    );

    return reviewList;
  }
}
