import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'card_image.dart';

class CardImageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350,
      child: ListView(
        children: [
          CardImage('assets/images/beach.jfif'),
          CardImage('assets/images/forest.jfif'),
          CardImage('assets/images/lake.jfif'),
          CardImage('assets/images/nature.jfif'),
          CardImage('assets/images/rainbow.jfif'),
          CardImage('assets/images/mountains.jfif'),
        ],
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
