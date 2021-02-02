import 'package:flutter/material.dart';
import 'package:mms_sb/footer/footerLinks.dart';
import 'package:mms_sb/footer/footerSocials.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 62.0,
          color: Color.fromRGBO(23, 72, 144, 1.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                socialIcon: 'facebook.png',
                url: 'https://www.facebook.com/TZGSlavonskiBrod',
              ),
              SocialIcon(
                socialIcon: 'youtube.png',
                url: 'https://www.youtube.com/user/TZGSlavonskiBrod',
              ),
              SocialIcon(
                socialIcon: 'instagram.png',
                url: 'https://www.instagram.com/tzbpz/?hl=hr',
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 174.0,
          color: Color.fromRGBO(6, 17, 35, 1.0),
          child: FooterLinks(),
        )
      ],
    );
  }
}
