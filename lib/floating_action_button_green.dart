import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  bool state = false;

  void showSnackBar() {
    String action;
    state ? action = 'Agregado a' : action = 'Eliminado de';
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text('$action tus favoritos'),
    ));
  }

  void onPressedFav() {
    setState(() {
      state = !state;
    });
    showSnackBar();
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      onPressed: onPressedFav,
      child: Icon(state ? Icons.favorite : Icons.favorite_border),
    );
  }
}
