import 'package:flutter/material.dart';
import 'package:flutter_web_page_view/widgets/bender_widget.dart';

class MyHomePage extends StatelessWidget {
  final PageController _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bender'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          _controller.animateToPage(0,
              duration: Duration(seconds: 1), curve: Curves.ease);
        },
      ),
      body: PageView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return BenderWidget();
        },
      ),
    );
  }
}
