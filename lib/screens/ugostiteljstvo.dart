import 'package:flutter/material.dart';
import 'package:mms_sb/extra/divider.dart';
import 'package:mms_sb/extra/scrollBack.dart';
import 'package:mms_sb/footer/footer.dart';
import 'package:mms_sb/navbar/navbar.dart';

class UgostiteljstvoScreen extends StatelessWidget {
  //Controller za animiranje scrollanja na vrh stranice
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: MaterialApp(
        title: 'Ugostiteljstvo',
        debugShowCheckedModeBanner: false,
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
                    height: 139.0,
                    width: 1170.0,
                    child: Image(
                      image: AssetImage('ugostiteljstvo_header.jpg'),
                    ),
                  ),
                  CustomDivider(),
                  SelectableText(
                    'Restorani',
                    style: TextStyle(
                      fontFamily: 'Lora',
                      fontSize: 24,
                      color: Color.fromRGBO(23, 23, 23, 1),
                    ),
                  ),
                  SizedBox(
                    height: 42,
                  ),
                  Container(
                    width: 1920,
                    height: 513,
                    color: Color.fromRGBO(234, 234, 234, 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        //Restoran Zrinski
                        Restoran(
                          image: 'restoran_zrinski.jpg',
                          naziv: 'Restoran Zrinski',
                          adresa: 'Ul. Nikole Zrinskog 44\n035 638 952',
                        ),
                        SizedBox(
                          width: 58,
                        ),
                        //Onyx
                        Restoran(
                          image: 'onyx.jpg',
                          naziv: 'Onyx',
                          adresa: 'Ul. Nikole Zrinskog 50\n035 445 555',
                        ),
                        SizedBox(
                          width: 58,
                        ),
                        //Gurman
                        Restoran(
                          image: 'gurman.jpg',
                          naziv: 'Gurman',
                          adresa: 'Ul. Matije Mesića 47\n035 427 841',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 57,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Uno
                      Restoran(
                        image: 'uno.jpg',
                        naziv: 'Uno',
                        adresa: 'Ul. Nikole Zrinskog 7\n035 442 107',
                      ),
                      SizedBox(
                        width: 58,
                      ),
                      //Ramarin
                      Restoran(
                        image: 'ramarin.jpg',
                        naziv: 'Ramarin',
                        adresa: 'Gardunska 18, Garčin\n091 549 2237',
                      ),
                      SizedBox(
                        width: 58,
                      ),
                      //Podroom Grill
                      Restoran(
                        image: 'podroom_grill.jpg',
                        naziv: 'Podroom Grill',
                        adresa: 'Trg Ivane Brlić Mažuranić 15\n035 445 045',
                      )
                    ],
                  ),
                  SizedBox(
                    height: 58,
                  ),
                  Image.asset('razmak.png'),
                  Container(
                    width: 1920,
                    //height: 1942,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('background.png'),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SelectableText(
                            'Kafići',
                            style: TextStyle(
                              fontFamily: 'Lora',
                              fontSize: 24,
                              color: Color.fromRGBO(23, 23, 23, 1),
                            ),
                          ),
                          KaficL(
                            image: 'navigator_bar.jpg',
                            naziv: 'NAVIGATOR BAR',
                            adresa: 'Trg Ivane Brlić Mažuranić 13Z',
                          ),
                          KaficR(
                            image: 'beerc.jpg',
                            naziv: 'BEERC',
                            adresa: 'Trg Ivane Brlić Mažuranić 9',
                          ),
                          KaficL(
                            image: 'soho_bar.jpg',
                            naziv: 'SOHO BAR',
                            adresa: 'Trg Ivane Brlić Mažuranić 3',
                          ),
                          Transform.translate(
                            offset: Offset(40, 0),
                            child: KaficR(
                              image: 'alfa.jpg',
                              naziv: 'CAFFE&DISCO ALFA',
                              adresa: 'Ul. Ante Starčevića 19',
                            ),
                          ),
                          Transform.translate(
                            offset: Offset(-40, 0),
                            child: KaficL(
                              image: 'kuca_piva.jpg',
                              naziv: 'KUĆA PIVA',
                              adresa: 'Ul. Ante Starčevića 17',
                            ),
                          ),
                        ],
                      ),
                    ),
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

//Kod za jedan blok restorana
class Restoran extends StatelessWidget {
  final String image;
  final String naziv;
  final String adresa;

  const Restoran({Key key, this.image, this.naziv, this.adresa})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 399,
      color: Colors.transparent,
      child: Stack(
        children: [
          //Fotografija restorana
          Align(
            alignment: Alignment.topCenter,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(image),
            ),
          ),
          //Kontejner za tekst restorana
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 294,
              height: 133,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30,
                      spreadRadius: 0,
                      offset: Offset(0, 5),
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                    ),
                  ]),
              child: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Column(children: [
                  SelectableText(
                    naziv,
                    style: TextStyle(
                        fontFamily: 'Lora',
                        fontSize: 22,
                        color: Color.fromRGBO(23, 23, 23, 1.0)),
                  ),
                  SizedBox(height: 23),
                  SelectableText(
                    adresa,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Mulish', height: 1.5, fontSize: 16),
                  )
                ]),
              ),
            ),
          )
        ],
      ),
    );
  }
}

//Kod za lijevi blok kafića
class KaficL extends StatelessWidget {
  final String image;
  final String naziv;
  final String adresa;

  const KaficL({Key key, this.image, this.naziv, this.adresa})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 52),
      child: Transform.translate(
        offset: Offset(-50, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 440,
              height: 299,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 25,
                    spreadRadius: 0,
                    offset: Offset(0, 5),
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                  )
                ],
              ),
              child: Image.asset(image),
            ),
            SizedBox(
              width: 98,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  naziv,
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(50, 50, 50, 1.0),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                SelectableText(
                  adresa,
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 24,
                      color: Color.fromRGBO(50, 50, 50, 1.0),
                      fontWeight: FontWeight.normal),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

//Kod za desni blok kafića
class KaficR extends StatelessWidget {
  final String image;
  final String naziv;
  final String adresa;

  const KaficR({Key key, this.image, this.naziv, this.adresa})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 52),
      child: Transform.translate(
        offset: Offset(50, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SelectableText(
                  naziv,
                  style: TextStyle(
                    fontFamily: 'Mulish',
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(50, 50, 50, 1.0),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                SelectableText(
                  adresa,
                  style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 24,
                      color: Color.fromRGBO(50, 50, 50, 1.0),
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
            SizedBox(
              width: 98,
            ),
            Container(
              width: 440,
              height: 299,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    blurRadius: 25,
                    spreadRadius: 0,
                    offset: Offset(0, 5),
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                  )
                ],
              ),
              child: Image.asset(image),
            ),
          ],
        ),
      ),
    );
  }
}
