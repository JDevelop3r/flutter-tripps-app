import 'package:flutter/material.dart';

class TripSearchTile extends StatelessWidget {
  final imgURL, placeName;
  TripSearchTile(this.imgURL, this.placeName);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          foregroundImage: AssetImage(imgURL),
        ),
        title: Text(placeName),
      ),
    );
  }
}
