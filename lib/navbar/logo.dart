import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mms_sb/screens/index.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) {
          return IndexSceen();
        }));
      },
      child: Column(
        children: [
          Image(
            image: AssetImage('grb.png'),
          ),
          SizedBox(
            height: 7.0,
          ),
          Text(
            'Slavonski Brod',
            style: TextStyle(
              fontFamily: 'Lora',
              fontSize: 24.0,
              // fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
