import 'package:flutter/material.dart';
import 'review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget {
  final String description =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut semper ornare sodales. Cras condimentum enim purus, sed placerat nunc volutpat et. Nunc malesuada, quam vel consectetur convallis, libero nisi volutpat nibh, ut aliquet diam eros eu tortor. Cras eget accumsan purus. Quisque sed justo convallis, efficitur ipsum sed, hendrerit nisl. \nDuis tincidunt, est vitae molestie laoreet elit dolor varius dui, ac malesuada ex orci vel libero";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Bahama", 3.5, description),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }
}
