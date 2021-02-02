import 'package:flutter/material.dart';

class NavbarItem extends StatefulWidget {
  final String title;
  final Widget url;
  const NavbarItem({Key key, this.title, this.url}) : super(key: key);
  @override
  _NavbarItemState createState() => _NavbarItemState();
}

class _NavbarItemState extends State<NavbarItem> {
  bool _hovered = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onHover: (value) {
        setState(() {
          _hovered = value;
        });
      },
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return widget.url;
        }));
      },
      child: Text(
        widget.title,
        style: TextStyle(
            fontFamily: 'Mulish',
            fontSize: 18,
            fontWeight: _hovered ? FontWeight.bold : FontWeight.normal),
      ),
    );
  }
}
