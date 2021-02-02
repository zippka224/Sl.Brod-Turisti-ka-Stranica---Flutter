import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class SocialIcon extends StatefulWidget {
  final String socialIcon;
  final String url;

  const SocialIcon({Key key, this.socialIcon, this.url}) : super(key: key);
  @override
  _SocialIconState createState() => _SocialIconState();
}

class _SocialIconState extends State<SocialIcon> {
  Color _containerBackground;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: InkWell(
        onTap: () {
          html.window.open(widget.url, 'new tab');
        },
        onHover: (value) {
          setState(() {
            _containerBackground =
                value ? Color.fromRGBO(6, 17, 35, 1.0) : Colors.transparent;
          });
        },
        child: Container(
          width: 62.0,
          height: 62.0,
          color: _containerBackground,
          child: Image(
            image: AssetImage(widget.socialIcon),
          ),
        ),
      ),
    );
  }
}
