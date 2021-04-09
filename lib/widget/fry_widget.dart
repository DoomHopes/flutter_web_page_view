import 'dart:math';

import 'package:flutter/material.dart';

class FryWidget extends StatefulWidget {
  @override
  _FryWidgetState createState() => _FryWidgetState();
}

class _FryWidgetState extends State<FryWidget> {
  Color benderColor;

  @override
  void initState() {
    super.initState();
    benderColor = randomColor();
  }

  Color randomColor() {
    return Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: benderColor,
      child: Center(
        child: Image.network(
            'https://upload.wikimedia.org/wikipedia/ru/thumb/9/97/Philip_J._Fry.png/248px-Philip_J._Fry.png'),
      ),
    );
  }
}
