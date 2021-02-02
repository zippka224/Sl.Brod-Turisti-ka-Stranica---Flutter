import 'package:flutter/material.dart';
import 'package:mms_sb/navbar/logo.dart';
import 'package:mms_sb/navbar/navbarItem.dart';
import 'package:mms_sb/screens/dogadjanja.dart';
import 'package:mms_sb/screens/oGradu.dart';
import 'package:mms_sb/screens/rekreacija.dart';
import 'package:mms_sb/screens/smjestaj.dart';
import 'package:mms_sb/screens/ugostiteljstvo.dart';
import 'package:mms_sb/screens/znamenitosti.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _spacer = 51.0;
    return Padding(
      padding: const EdgeInsets.all(41.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            NavbarItem(
              title: 'O gradu',
              url: OGraduScreen(),
            ),
            SizedBox(
              width: _spacer,
            ),
            NavbarItem(
              title: 'Znamenitosti',
              url: ZnamenitostiScreen(),
            ),
            SizedBox(
              width: _spacer,
            ),
            NavbarItem(
              title: 'Događanja',
              url: DogadjanjaScreen(),
            ),
            SizedBox(
              width: _spacer,
            ),
            Logo(),
            SizedBox(
              width: _spacer,
            ),
            NavbarItem(
              title: 'Ugostiteljstvo',
              url: UgostiteljstvoScreen(),
            ),
            SizedBox(
              width: _spacer,
            ),
            NavbarItem(
              title: 'Rekreacija',
              url: RekreacijaScreen(),
            ),
            SizedBox(
              width: _spacer,
            ),
            NavbarItem(
              title: 'Smještaj',
              url: SmjestajScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
