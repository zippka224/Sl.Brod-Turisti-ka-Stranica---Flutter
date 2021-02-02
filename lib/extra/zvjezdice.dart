import 'package:flutter/material.dart';

Widget zvjezdice(brojZvjezdica) {
  Image zvjezdice;
  switch (brojZvjezdica) {
    case 0:
      {
        return Container(
          width: 0,
          height: 0,
          color: Colors.transparent,
        );
      }
      break;
    case 2:
      {
        zvjezdice = Image(
          image: AssetImage('zvjezdice_2.png'),
        );
      }
      break;
    case 3:
      {
        zvjezdice = Image(
          image: AssetImage('zvjezdice_3.png'),
        );
      }
      break;
    case 4:
      {
        zvjezdice = Image(
          image: AssetImage('zvjezdice_4.png'),
        );
      }
      break;
  }
  return zvjezdice;
}
