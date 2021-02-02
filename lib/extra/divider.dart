import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 53.0),
      child: Divider(
        height: 0.0,
        thickness: 5.0,
        color: Color.fromRGBO(23, 72, 144, 1.0), //Colors.blue[900],
        indent: MediaQuery.of(context).size.width * 0.46,
        endIndent: MediaQuery.of(context).size.width * 0.46,
      ),
    );
  }
}
