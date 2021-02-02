import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mms_sb/extra/divider.dart';
import 'package:mms_sb/extra/scrollBack.dart';
import 'package:mms_sb/footer/footer.dart';
import 'package:mms_sb/navbar/navbar.dart';
import 'package:mms_sb/screens/dogadjanja.dart';
import 'package:mms_sb/screens/oGradu.dart';
import 'package:mms_sb/screens/smjestaj.dart';
import 'package:mms_sb/screens/ugostiteljstvo.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class IndexSceen extends StatelessWidget {
  //Controller za animiranje scrollanja na vrh stranice
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Početna',
        home: Scaffold(
          floatingActionButton: ScrollBackWidget(
            controller: controller,
          ),
          body: SingleChildScrollView(
            controller: controller,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Navbar(),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          blurRadius: 20.0,
                          spreadRadius: 0.0,
                          offset: Offset(6.0, 6.0),
                        ),
                      ],
                    ),
                    child: Image(
                      image: AssetImage('pocetna_slike.jpg'),
                    ),
                  ),
                  CustomDivider(),
                  SelectableText(
                    'UPOZNAJTE\nGRAD NA SAVI',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(50, 50, 50, 1.0),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  IndexText(),
                  SizedBox(
                    height: 125.0,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 905.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlocContainer(
                          title: 'UGOSTITELJSTVO',
                          icon: 'icon_ugostiteljstvo.png',
                          url: UgostiteljstvoScreen(),
                        ),
                        BlocContainer(
                          title: 'SMJEŠTAJ',
                          icon: 'icon_smjestaj.png',
                          url: SmjestajScreen(),
                        ),
                        BlocContainer(
                          title: 'DOGAĐANJA',
                          icon: 'icon_dogadanja.png',
                          url: DogadjanjaScreen(),
                        )
                      ],
                    ),
                  ),
                  CustomDivider(),
                  SelectableText(
                    'NOVOSTI',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(50, 50, 50, 1.0),
                    ),
                  ),
                  SizedBox(
                    height: 63,
                  ),
                  IndexNovosti(),
                  SizedBox(height: 95.0),
                  Footer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//Kod za tekst koji se nalazi ispod naslova "UPOZNAJTE GRAD NA SAVI"
class IndexText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text:
            'Grad Slavonski Brod, po veličini sedmi grad u Republici Hrvatskoj s 59.141 stanovnika, nalazi se na obali rijeka Save te\nproteže na blage padine Dilj-gore. Zauzima površinu od 54,45 kvadratnih metara. Izgrađen je na mjestu rimske Marsonie, na\nraskrižju najvažnijih međunarodnih pravaca koji povezuju zemlje Europe s Bliskim istokom, uz granicu sa Bosnom i\nHercegovinom. Najveći je grad slavonske Posavine.',
        style: TextStyle(
          fontSize: 16.0,
          fontFamily: 'Mulish',
          height: 1.8,
          color: Color.fromRGBO(50, 50, 50, 1),
        ),
        children: <TextSpan>[
          TextSpan(
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return OGraduScreen();
                  }));
                },
              text: ' Saznajte više...',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'Mulish',
                height: 1.8,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(23, 72, 144, 1),
              )),
        ],
      ),
    );
  }
}

// Kod za tri kvadrata, png, tekst ispod koja se nalaze na početnoj stranici
class BlocContainer extends StatefulWidget {
  final String title;
  final String icon;
  final Widget url;
  const BlocContainer({Key key, this.title, this.icon, this.url})
      : super(key: key);

  @override
  _BlocContainerState createState() => _BlocContainerState();
}

class _BlocContainerState extends State<BlocContainer> {
  Color _containerBackground = Color.fromRGBO(23, 72, 144, 1.0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onHover: (value) {
            setState(() {
              _containerBackground = value
                  ? Color.fromRGBO(6, 17, 35, 1.0)
                  : Color.fromRGBO(23, 72, 144, 1.0);
            });
          },
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return widget.url;
            }));
          },
          child: Container(
            width: 200.0,
            height: 171,
            color: _containerBackground,
            child: Image(
              image: AssetImage(widget.icon),
            ),
          ),
        ),
        SizedBox(
          height: 23,
        ),
        SelectableText(
          widget.title,
          style: TextStyle(
            fontFamily: 'Mulish',
            fontSize: 19.0,
            fontWeight: FontWeight.bold,
            color: Color.fromRGBO(50, 50, 50, 1.0),
          ),
        ),
      ],
    );
  }
}

//Kod za sekciju NOVOSTI na početnoj stranici
class IndexNovosti extends StatefulWidget {
  @override
  _IndexNovostiState createState() => _IndexNovostiState();
}

class _IndexNovostiState extends State<IndexNovosti> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17.0),
      width: 1205.0,
      height: 434.0,
      color: Color.fromRGBO(239, 239, 239, 1.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocContainerNovosti(
            title: 'Obavijesti vezane uz koronavirus (covid-19)',
            text:
                'Navedene obavijesti sadržavaju aktualne\npodatke o broju oboljelih i savjete vezane uz\nsigurnost i zaštitu stanovništva',
            picture: 'novosti_1.jpg',
            url: 'https://www.slavonski-brod.hr/index.php/covid19',
          ),
          BlocContainerNovosti(
            title: 'Kako se snaći u Slavonskom Brodu?',
            text:
                'Saznajte više o mnogobrojnim taxi službama koje\nće Vas bezbrižno odvesti do tražene destinacije',
            picture: 'novosti_2.jpg',
            url: 'https://cammeo.hr/hr/gradovi/slavonski-brod',
          ),
          BlocContainerNovosti(
            title: 'Prikupljanje pomoći za stradale u potresu',
            text:
                'Brođani u akciji prikupljanja potrebnih namirnica,\nhigijenskih potrepština, tople odjeće za unesrećene\nstanovnike',
            picture: 'novosti_3.jpg',
            url:
                'https://www.slavonski-brod.hr/vijesti/11029-prikupljanje-pomoci-za-stradale-u-potresu',
          )
        ],
      ),
    );
  }
}

//kod za jedan "blok" u sekciji novosti
class BlocContainerNovosti extends StatefulWidget {
  final String title;
  final String picture;
  final String text;
  final String url;

  const BlocContainerNovosti({
    Key key,
    this.title,
    this.picture,
    this.text,
    this.url,
  }) : super(key: key);

  @override
  _BlocContainerNovostiState createState() => _BlocContainerNovostiState();
}

class _BlocContainerNovostiState extends State<BlocContainerNovosti> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurRadius: 12.0,
                spreadRadius: 2.0,
              )
            ],
          ),
          child: Image(
            image: AssetImage(widget.picture),
          ),
        ),
        SizedBox(
          height: 23.0,
        ),
        InkWell(
          onTap: () {
            html.window.open(widget.url, 'new tab');
          },
          child: Text(
            widget.title,
            style: TextStyle(
              fontFamily: 'Mulish',
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(50, 50, 50, 1.0),
            ),
          ),
        ),
        SizedBox(
          height: 23.0,
        ),
        SelectableText(
          widget.text,
          style: TextStyle(
            fontFamily: 'Mulish',
            height: 1.8,
            fontSize: 16.0,
            color: Color.fromRGBO(50, 50, 50, 1.0),
          ),
        )
      ],
    );
  }
}
