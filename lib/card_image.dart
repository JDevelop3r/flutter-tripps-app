import 'package:flutter/material.dart';
import 'package:platzi_tripps_app/floating_action_button_green.dart';

class CardImage extends StatelessWidget {
  String pathImage;

  CardImage(this.pathImage);
  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 350.0,
      width: 250,
      margin: EdgeInsets.only(top: 60, left: 20),
      decoration: BoxDecoration(
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage)),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          shape: BoxShape.rectangle,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
    );
    return Stack(
      alignment: Alignment(0.9, 1.1),
      children: [card, FloatingActionButtonGreen()],
    );
  }
}
