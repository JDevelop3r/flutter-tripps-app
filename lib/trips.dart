import 'package:flutter/material.dart';
import 'package:platzi_tripps_app/home_trips.dart';
import 'package:platzi_tripps_app/profile_trips.dart';
import 'package:platzi_tripps_app/search_trips.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Trips();
  }
}

class _Trips extends State<Trips> {
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple,
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
            ],
          ),
        ),
        body: widgetsChildren[indexTap]

        // MyHomePage(title: 'Flutter Demo Home Page'),
        );
  }
}
