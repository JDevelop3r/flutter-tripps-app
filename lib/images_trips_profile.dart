import 'package:flutter/material.dart';

import 'floating_action_button_green.dart';

class ImagesTripsProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cardImage = Container(
      height: 180.0,
      width: 340,
      margin: EdgeInsets.only(top: 250, left: 20),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/mountains.jfif')),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );

    final cardDetails = Stack(
      alignment: Alignment(0.9, 1.3),
      children: [
        Container(
          height: 100.0,
          width: 250.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white,
            shape: BoxShape.rectangle,
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 15.0,
                  offset: Offset(0.0, 7.0))
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Mountains Somewhere',
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              Text(
                'Activities',
                style: TextStyle(fontSize: 14.0, color: Colors.grey[400]),
              ),
              Text(
                'Steps 123,574',
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.amber[600]),
              ),
            ],
          ),
        ),
        FloatingActionButtonGreen()
      ],
    );

    return Stack(
      alignment: Alignment(0.2, 1.3),
      children: [cardImage, cardDetails],
    );
  }
}
