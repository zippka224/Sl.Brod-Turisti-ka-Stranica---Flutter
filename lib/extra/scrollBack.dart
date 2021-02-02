import 'package:flutter/material.dart';

//Widget za kreiranje floating gumba za povratak na vrh
class ScrollBackWidget extends StatefulWidget {
  const ScrollBackWidget({
    Key key,
    @required this.controller,
  }) : super(key: key);
  final ScrollController controller;
  @override
  _ScrollBackWidgetState createState() => _ScrollBackWidgetState();
}

class _ScrollBackWidgetState extends State<ScrollBackWidget> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      hoverColor: Color.fromRGBO(23, 72, 144, 1.0),
      child: Icon(Icons.arrow_upward_outlined),
      tooltip: 'Povratak na vrh',
      backgroundColor: Color.fromRGBO(23, 72, 144, 0.75),
      onPressed: () {
        scrollBack(widget.controller);
      },
    );
  }
}

void scrollBack(controller) {
  controller.animateTo(0,
      duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
}