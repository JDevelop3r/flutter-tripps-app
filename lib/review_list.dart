import 'package:flutter/material.dart';
import 'package:platzi_tripps_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Review> reviewList = [
      Review("assets/images/people.webp", "Manuel Zambrano",
          "3 review 6 photos", "What an amazing place!"),
      Review("assets/images/youngBoy.jfif", "Pedro Rodriguez",
          "1 reviews 2 photos", "Love those beaches"),
      Review("assets/images/guy.jfif", "Jose Di Pietro", "4 reviews 3 photos",
          "Nice place!"),
    ];
    return Column(children: reviewList);
  }
}
