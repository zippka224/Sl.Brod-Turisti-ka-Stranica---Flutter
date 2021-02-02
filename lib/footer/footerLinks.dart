import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class FooterLinks extends StatefulWidget {
  @override
  _FooterLinksState createState() => _FooterLinksState();
}

class _FooterLinksState extends State<FooterLinks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.28, vertical: 17.0),
      child: Row(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                'Ostale stranice',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
              SizedBox(
                height: 15.0,
              ),
              ExternalLink(
                title: 'Grad Slavonski Brod',
                url: 'https://www.slavonski-brod.hr/',
              ),
              SizedBox(
                height: 10.0,
              ),
              ExternalLink(
                title: 'Turistička zajednica',
                url: 'https://www.tzgsb.hr/',
              ),
              SizedBox(
                height: 10.0,
              ),
              ExternalLink(
                title: 'Brodsko-posavska županija',
                url: 'http://www.bpz.hr/',
              ),
              SizedBox(
                height: 10.0,
              ),
              ExternalLink(
                title: 'Hrvatska Puna Života',
                url: 'https://croatia.hr/hr-HR',
              ),
            ],
          ),
          Image(
            image: AssetImage('zupanija.png'),
          )
        ],
      ),
    );
  }
}

//Kod za linkove u footeru, klikom se otvara nova kartica
class ExternalLink extends StatelessWidget {
  final String title;
  final String url;

  const ExternalLink({Key key, this.title, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        html.window.open(url, 'new tab');
      },
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontFamily: 'Mulish', fontSize: 15.0),
      ),
    );
  }
}
