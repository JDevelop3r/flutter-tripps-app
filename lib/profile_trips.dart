import 'package:flutter/material.dart';
import 'package:platzi_tripps_app/header_profile.dart';
import 'package:platzi_tripps_app/images_trips_profile.dart';

class ProfileTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [HeaderProfile(), ImagesTripsProfile()],
    );
  }
}
