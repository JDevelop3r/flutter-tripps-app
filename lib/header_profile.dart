import 'package:flutter/material.dart';

class HeaderProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttons = [
      InkWell(
          child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white),
              child: Icon(
                Icons.bookmark_border,
                size: 20,
              )),
          onTap: () {},
          enableFeedback: false),
      InkWell(
          child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white),
              child: Icon(
                Icons.card_giftcard,
                size: 20,
              )),
          onTap: () {},
          enableFeedback: false),
      InkWell(
          child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white),
              child: Icon(
                Icons.add,
                size: 30,
              )),
          onTap: () {},
          enableFeedback: false),
      InkWell(
          child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white),
              child: Icon(
                Icons.mail,
                size: 20,
              )),
          onTap: () {},
          enableFeedback: false),
      InkWell(
          child: Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white),
              child: Icon(
                Icons.person,
                size: 20,
              )),
          onTap: () {},
          enableFeedback: false),
    ];

    return Container(
      height: 300.0,
      decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [Colors.indigo, Colors.indigo[800]])),
      padding: EdgeInsets.only(top: 50, left: 20.0, right: 20.0, bottom: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Profile',
            style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              CircleAvatar(
                foregroundImage: AssetImage('assets/images/guy.jfif'),
                minRadius: 38,
              ),
              SizedBox(
                width: 6.0,
              ),
              Column(
                children: [
                  Text(
                    'Oscar Delgado',
                    style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Text(
                    'oscar@delgado.com',
                    style: TextStyle(fontSize: 12.0, color: Colors.white38),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: buttons,
          )
        ],
      ),
    );
  }
}
