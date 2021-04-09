import 'dart:math';

import 'package:flutter/material.dart';

class BenderWidget extends StatefulWidget {
  @override
  _BenderWidgetState createState() => _BenderWidgetState();
}

class _BenderWidgetState extends State<BenderWidget> {
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
            'https://upload.wikimedia.org/wikipedia/ru/a/a6/Bender_Rodriguez.png'),
      ),
    );
  }
}

// bender https://upload.wikimedia.org/wikipedia/ru/a/a6/Bender_Rodriguez.png
