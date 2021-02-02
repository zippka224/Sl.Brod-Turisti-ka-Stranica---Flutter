import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mms_sb/extra/divider.dart';
import 'package:mms_sb/extra/scrollBack.dart';
import 'package:mms_sb/extra/zvjezdice.dart';
import 'package:mms_sb/footer/footer.dart';
import 'package:mms_sb/navbar/navbar.dart';

class SmjestajScreen extends StatelessWidget {
  //Controller za animiranje scrollanja na vrh stranice
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = TextStyle(
      fontFamily: 'Mulish',
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      height: 1.9,
      color: Color.fromRGBO(50, 50, 50, 1.0),
    );
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: MaterialApp(
        title: 'Smještaj',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: ScrollBackWidget(
            controller: controller,
          ),
          body: SingleChildScrollView(
            controller: controller,
            child: Center(
              child: Column(
                children: [
                  Navbar(),
                  Container(
                    height: 139.0,
                    width: 1170.0,
                    child: Image(
                      image: AssetImage('smjestaj_header.jpg'),
                    ),
                  ),
                  CustomDivider(),
                  SelectableText(
                    'Hoteli/Hosteli',
                    style: TextStyle(fontFamily: 'Lora', fontSize: 24.0),
                  ),
                  SizedBox(
                    height: 45.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('smjestaj_karta.jpg'),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //Doživite uslugu vrijednu povratka
                      Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'DOŽIVITE USLUGU ',
                              style: textStyle,
                              children: [
                                TextSpan(
                                  text: 'VRIJEDNU',
                                  style: TextStyle(
                                    color: Colors.white,
                                    backgroundColor:
                                        Color.fromRGBO(23, 72, 144, 1.0),
                                  ),
                                ),
                                TextSpan(text: '\nPOVRATKA', style: textStyle),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 28.0),
                            child: Container(
                              width: 150.0,
                              height: 5.0,
                              color: Color.fromRGBO(23, 72, 144, 1.0),
                            ),
                          ),
                          SelectableText(
                            'Usluge osoblja naših lokalnih smještajnih\nobjekata pružaju osjećaj topline Vašeg doma.',
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 16.0,
                              color: Color.fromRGBO(50, 50, 50, 1.0),
                              height: 1.8,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  CustomDivider(),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        width: 1920,
                        height: 1780,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage('brick-wall-bg.jpg'),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          //Prvi stupac
                          Column(
                            children: [
                              //Hostel Levicki
                              SmjestajLeft(
                                image: 'hostel_levicki.jpg',
                                naziv: 'Hostel Levicki',
                                adresa:
                                    'Trg Stjepana Miletića 11\n3500 Slavonski Brod',
                                telefon: '+385 98 365 000',
                                web: 'hostel-levicki.hr',
                                email: 'hostel.levicki@gmail.com',
                                broj: '1',
                              ),
                              SizedBox(
                                height: 121,
                              ),
                              //Hostel Mali Pariz
                              SmjestajLeft(
                                image: 'hostel_mali_pariz.jpg',
                                naziv: 'Hostel Mali Pariz',
                                adresa:
                                    'Ul. Eugena Kumičića 32\n3500 Slavonski Brod',
                                telefon: '+385 35 470 009',
                                web: 'hostelmalipariz.hr',
                                email: 'hostelmalipariz@gmail.com',
                                broj: '3',
                              ),
                              SizedBox(
                                height: 121,
                              ),
                              SmjestajLeft(
                                image: 'hotel_central.jpg',
                                naziv: 'Hotel Central',
                                adresa:
                                    'Petra Krešimira IV 45\n3500 Slavonski Brod',
                                telefon: '+385 35 492 030',
                                web: 'www.hotelcentral.hr',
                                email: 'info@hotelcentral.hr',
                                broj: '5',
                              )
                            ],
                          ),
                          SizedBox(
                            width: 121,
                          ),
                          //Drugi stupac
                          Transform.translate(
                            offset: Offset(0, 273),
                            child: Column(
                              children: [
                                SmjestajRight(
                                  image: 'hotel_savus.jpg',
                                  naziv: 'Hotel Savus',
                                  adresa:
                                      'A. Starčevića 2A\n3500 Slavonski Brod',
                                  telefon: '+385 35 405 888',
                                  web: 'www.savus-hotel.com',
                                  email: 'info@savus-hotel.com',
                                  broj: '2',
                                ),
                                SizedBox(
                                  height: 121,
                                ),
                                //Hostel Mali Pariz
                                SmjestajRight(
                                  image: 'hotel_art.jpg',
                                  naziv: 'Hotel Art',
                                  adresa:
                                      'Nikole Zrinskog 44\n3500 Slavonski Brod',
                                  telefon: '+385 35 638 950',
                                  web: 'www.art-hotel.hr',
                                  email: 'info@art-hotel.hr',
                                  broj: '4',
                                ),
                                SizedBox(
                                  height: 121,
                                ),
                                SmjestajRight(
                                  image: 'hostel_smart.jpg',
                                  naziv: 'Smart Hostel',
                                  adresa:
                                      'Ulica Petra Krešimira 45a\n3500 Slavonski Brod',
                                  telefon: '+385 35 492 030',
                                  web: 'www.smarthostel.hr',
                                  email: 'info@smarthostel.hr',
                                  broj: '6',
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  CustomDivider(),
                  //Apartmani/Prenoćišta
                  SelectableText(
                    'Apartmani/Prenoćišta',
                    style: TextStyle(fontFamily: 'Lora', fontSize: 24.0),
                  ),
                  SizedBox(
                    height: 59,
                  ),
                  //Pansion Antonio
                  Apartmani(
                    image1: 'pansion_antonio1.jpg',
                    image2: 'pansion_antonio2.jpg',
                    naziv: 'Pansion Antonio',
                    adresa: 'Frane Bulića 22\n3500 Slavonski Brod',
                    telefon: '+385 35 415 522',
                    web: 'wwww.pansion-antonio.hr',
                    email: 'info@pansion-antonio.hr',
                    facebook: false,
                    brojZvjezdica: 0,
                  ),
                  //Sobe Aračić
                  Apartmani(
                    image1: 'sobe_aracic1.jpg',
                    image2: 'sobe_aracic2.jpg',
                    naziv: 'Sobe Aračić',
                    adresa: 'Ulica Ante Starčevića 5\n3500 Slavonski Brod',
                    telefon: '+385 91 508 2900',
                    web: 'Sobe Aračić',
                    email: 'josip.aracicsb@gmail.com',
                    facebook: true,
                    brojZvjezdica: 3,
                  ),
                  //Apartman Lamar
                  Apartmani(
                    image1: 'apartman_lamar1.jpg',
                    image2: 'apartman_lamar2.jpg',
                    naziv: 'Apartman Lamar',
                    adresa: 'Matije Gupca 41\n3500 Slavonski Brod',
                    telefon: '+385 97 646 4888',
                    web: 'Apartman Lamar',
                    email: 'laman.brod@gmail.com',
                    facebook: true,
                    brojZvjezdica: 3,
                  ),
                  //Apartman Val
                  Apartmani(
                    image1: 'apartman_val1.jpg',
                    image2: 'apartman_val2.jpg',
                    naziv: 'Apartman Val',
                    adresa: 'Naselje Slavonija II 2/2\n3500 Slavonski Brod',
                    telefon: '+385 92 379 0520',
                    web: 'wwww.apartmanval.com',
                    email: 'apartmanvalsb@gmail.com',
                    facebook: false,
                    brojZvjezdica: 4,
                  ),
                  //OPG Rodino Gnijezdo
                  Apartmani(
                    image1: 'opg_rodino-gnijezdo1.jpg',
                    image2: 'opg_rodino-gnijezdo2.jpg',
                    naziv: 'OPG Rodino Gnijezdo',
                    adresa: 'Zagrebačka 348\n3500 Slavonski Brod',
                    telefon: '+385 35 273 408',
                    web: 'wwww.sobe-tonkic.hr',
                    email: 'rodinogn@gmail.com',
                    facebook: false,
                    brojZvjezdica: 2,
                  ),
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

//Kod za lijevi stupac pod sekcijom "Hoteli/Hosteli"
class SmjestajLeft extends StatelessWidget {
  final String image;
  final String naziv;
  final String adresa;
  final String telefon;
  final String web;
  final String email;
  final String broj;

  const SmjestajLeft(
      {Key key,
      this.image,
      this.naziv,
      this.adresa,
      this.telefon,
      this.web,
      this.email,
      this.broj})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 475,
      height: 410,
      child: Stack(
        children: [
          //Gornje desni kontejner
          Align(
            alignment: Alignment.topRight,
            child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 8, 97),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        naziv,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //Adresa
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: 'Adresa: ',
                          children: [
                            TextSpan(
                              text: adresa,
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //Telefon
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: 'Telefon: ',
                          children: [
                            TextSpan(
                              text: telefon,
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //Web
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: 'Web: ',
                          children: [
                            TextSpan(
                              text: web,
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //Email
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: 'E-mail: ',
                          children: [
                            TextSpan(
                              text: email,
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                width: 291,
                height: 327,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 2,
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                    ),
                  ],
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(37),
                )),
          ),
          //Donje lijevi kontejner
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(image),
              ),
              width: 301,
              height: 199,
            ),
          ),
          Positioned(
            top: 0,
            left: 119,
            child: Image.asset('marker_$broj' + '.png'),
          )
        ],
      ),
    );
  }
}

//Kod za desni stupac pod sekcijom "Hoteli/Hosteli"
class SmjestajRight extends StatelessWidget {
  final String image;
  final String naziv;
  final String adresa;
  final String telefon;
  final String web;
  final String email;
  final String broj;

  const SmjestajRight(
      {Key key,
      this.image,
      this.naziv,
      this.adresa,
      this.telefon,
      this.web,
      this.email,
      this.broj})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 475,
      height: 410,
      child: Stack(
        children: [
          //Gornje lijevi kontejner
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 8, 97),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        naziv,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //Adresa
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: 'Adresa: ',
                          children: [
                            TextSpan(
                              text: adresa,
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //Telefon
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: 'Telefon: ',
                          children: [
                            TextSpan(
                              text: telefon,
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //Web
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: 'Web: ',
                          children: [
                            TextSpan(
                              text: web,
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      //Email
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          text: 'E-mail: ',
                          children: [
                            TextSpan(
                              text: email,
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                width: 291,
                height: 327,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 2,
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                    ),
                  ],
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(37),
                )),
          ),
          //Donje desni kontejner
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(28),
                child: Image.asset(image),
              ),
              width: 301,
              height: 199,
            ),
          ),
          Positioned(
            top: 0,
            right: 120,
            child: Image.asset('marker_$broj' + '.png'),
          ),
        ],
      ),
    );
  }
}

//Kod za jedan blok apartmana/prenoćišta
class Apartmani extends StatelessWidget {
  final String image1;
  final String image2;
  final String naziv;
  final String adresa;
  final String telefon;
  final String web;
  final String email;
  final bool facebook;
  final int brojZvjezdica;

  const Apartmani(
      {Key key,
      this.image1,
      this.image2,
      this.naziv,
      this.adresa,
      this.telefon,
      this.web,
      this.email,
      this.facebook,
      this.brojZvjezdica})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 65),
      child: Container(
        width: 1092,
        height: 567,
        decoration: BoxDecoration(
          color: Color.fromRGBO(234, 234, 234, 1.0),
          borderRadius: BorderRadius.circular(48),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 39,
              left: 127,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 6,
                      spreadRadius: 0,
                      offset: Offset(4, 6),
                      color: Color.fromRGBO(0, 0, 0, 0.25)),
                ]),
                child: Image.asset(image1),
              ),
            ),
            Positioned(
              bottom: 45,
              right: 128,
              child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 6,
                      spreadRadius: 0,
                      offset: Offset(4, 6),
                      color: Color.fromRGBO(0, 0, 0, 0.25)),
                ]),
                child: Image.asset(image2),
              ),
            ),
            Positioned(
              top: 38,
              left: 673,
              child: SelectableText(
                naziv,
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(23, 72, 144, 1.0),
                ),
              ),
            ),
            Positioned(
              top: 96,
              left: 673,
              child: RichText(
                text: TextSpan(
                  text: 'Adresa: ',
                  style: TextStyle(
                    height: 1.8,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(50, 50, 50, 1),
                  ),
                  children: [
                    TextSpan(
                      text: adresa,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Montserrat',
                          fontSize: 16),
                    ),
                    TextSpan(
                        text: '\nTelefon: ',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(50, 50, 50, 1),
                        ),
                        children: [
                          TextSpan(
                            text: telefon,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Montserrat'),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 103,
              left: 180,
              child: RichText(
                text: TextSpan(
                  text: facebook ? 'Facebook: ' : 'Web: ',
                  style: TextStyle(
                    height: 1.8,
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(50, 50, 50, 1),
                  ),
                  children: [
                    TextSpan(
                      text: web,
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Montserrat',
                          fontSize: 16),
                    ),
                    TextSpan(
                        text: '\nE-mail: ',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(50, 50, 50, 1),
                        ),
                        children: [
                          TextSpan(
                            text: email,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontFamily: 'Montserrat'),
                          ),
                        ]),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 37,
              child: zvjezdice(brojZvjezdica),
            ),
          ],
        ),
      ),
    );
  }
}
