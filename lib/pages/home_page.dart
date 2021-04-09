import 'package:flutter/material.dart';
import 'package:flutter_web_page_view/widgets/bender_widget.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bender'),
      ),
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BenderWidget();
        },
      ),
    );
  }
}
