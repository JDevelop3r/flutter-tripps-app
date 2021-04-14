import 'package:flutter/material.dart';
import 'package:platzi_tripps_app/button_purple.dart';
import 'package:platzi_tripps_app/review_list.dart';
import 'package:platzi_tripps_app/stars.dart';

class DescriptionPlace extends StatelessWidget {
  final String namePlace;
  final double stars;
  final String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final titleStars = Container(
        margin: EdgeInsets.only(top: 315.0),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 20.0, left: 20.0),
              child: Text(namePlace,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
                  textAlign: TextAlign.left),
            ),
            Row(
              children: [showStars(stars)],
            )
          ],
        ));

    final descriptionText = Container(
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF65675a)),
      ),
      margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
    );

    final descriptionStack = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleStars, descriptionText, ButtonPurple('Navigate')],
    );

    return descriptionStack;
  }
}
