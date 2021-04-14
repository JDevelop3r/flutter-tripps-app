import 'package:flutter/material.dart';

Widget showStars(double numStars, [double size = 24]) {
  List<Widget> starsToShow = [];
  List(numStars.truncate()).forEach((i) => starsToShow.add(star(1, size)));
  if (numStars.remainder(numStars.truncate()).ceil() >= 1) {
    numStars++;
  }
  List(numStars.remainder(numStars.truncate()).ceil())
      .forEach((i) => starsToShow.add(star(2, size)));
  List((numStars.truncate() - 5).abs())
      .forEach((i) => starsToShow.add(star(3, size)));

  return Row(
    children: starsToShow,
  );
}

Widget star(int type, double size) {
  return Container(
      margin: EdgeInsets.only(top: 0.0, right: 3.0),
      child: Icon(
          type == 1
              ? Icons.star
              : type == 2
                  ? Icons.star_half
                  : Icons.star_border,
          color: Color(0xFFf2c611),
          size: size));
}
