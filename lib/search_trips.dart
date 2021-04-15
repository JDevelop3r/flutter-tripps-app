import 'package:flutter/material.dart';
import 'package:platzi_tripps_app/trip_search_tile.dart';

class SearchTrips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.indigo,
      flexibleSpace: SafeArea(
        child: Container(
          padding: EdgeInsets.only(right: 16, top: 16.0),
          child: Row(
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.list,
                  color: Colors.black,
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Search',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                  ],
                ),
              ),
              /* Icon(
                Icons.settings,
                color: Colors.black54,
              ), */
            ],
          ),
        ),
      ),
    );

    final bodySearch = ListView(
      children: [
        TripSearchTile('assets/images/beach.jfif', 'Beach'),
        TripSearchTile('assets/images/forest.jfif', 'Forest'),
        TripSearchTile('assets/images/lake.jfif', 'Lake'),
        TripSearchTile('assets/images/nature.jfif', 'Nature'),
        TripSearchTile('assets/images/mountains.jfif', 'Mountains'),
      ],
    );

    return Scaffold(
      appBar: appBar,
      body: bodySearch,
    );
  }
}
