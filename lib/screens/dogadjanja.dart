import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mms_sb/extra/divider.dart';
import 'package:mms_sb/extra/scrollBack.dart';
import 'package:mms_sb/footer/footer.dart';
import 'package:mms_sb/navbar/navbar.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

class DogadjanjaScreen extends StatelessWidget {
  //Controller za animiranje scrollanja na vrh stranice
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    TextStyle textStyleHeading = TextStyle(
      fontFamily: 'Mulish',
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Color.fromRGBO(50, 50, 50, 1.0),
    );
    TextStyle textStyleParagraph = TextStyle(
        fontFamily: 'Mulish',
        fontSize: 16.0,
        color: Color.fromRGBO(50, 50, 50, 1.0),
        height: 1.8);
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: MaterialApp(
        title: 'Događanja',
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
                      image: AssetImage('dogadanja_header.jpg'),
                    ),
                  ),
                  CustomDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Image(
                          image: AssetImage('dogadanja_1.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            'U SVIJETU BAJKI IVANE BRLIĆ MAŽURANIĆ',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          RichText(
                            text: TextSpan(
                              text:
                                  'Dječja manifestacija koja nastavlja tradiciju susreta koji traju od 1970. u\nspomen na veliku hrvatsku spisateljicu koja je svoj djeci svijeta podarila\nprekrasne priče. Obuhvaća obilje programa namijenjenih djeci poput\ndramskih, likovnih i kompjutorskih radionica, kazališnih predstava, igraonica,\npričaonica, susreta s književnicima, izložbi, glazbeno-scenskih programa i sl.\nViše o ovoj manifestaciji možete otkriti',
                              style: textStyleParagraph,
                              children: <TextSpan>[
                                TextSpan(
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        html.window.open(
                                            'https://www.usvijetubajki.org/',
                                            'new tab');
                                      },
                                    text: ' ovdje...',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Mulish',
                                      height: 1.8,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(23, 72, 144, 1),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  CustomDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SelectableText(
                            'MOTO SUSRETI',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'Moto susreti (motorijada) događaj je u našem gradu koji privlači pažnju\nkoliko mladima, toliko i starijima koji dijele jedan detalj, a to je ljubav prema\nmotorima. Održavaju se na terenima Sportsko-rekreacijskog centra "Poloj" u\npovodu Dana grada Slavonskog Broda, te imaju međunarodni karakter.\nMeđu obiljem zanimljivih sadržaja koji svake godine na susrete privuku više\ntisuća posjetitelja, treba istaknuti moto igre, utrke ubrzanja, moto defile sa\negzibicijama, rock koncerte i dr. Osim toga, naši posjetitelji mogu uživati u\nprekrasnim zvucima na otvorenom uz naše glavne zvijezde od kojih izdvajamo\nZabranjeno Pušenje, Edo Majka, Atomsko Skladište, Parni Valjak, Thompson,\nDivlje Jagode, Van Gogh, Urban, Opća Opasnost, Hladno Pivo, TBF, Majke,\nŽeljko Bebek, Vatra, S.A.R.S. i brojni drugi.',
                            style: textStyleParagraph,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Image(
                          image: AssetImage('dogadanja_2.jpg'),
                        ),
                      )
                    ],
                  ),
                  CustomDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Image(
                          image: AssetImage('dogadanja_3.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            'BRODSKO GLAZBENO LJETO',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'Brodsko glazbeno ljeto jedinstvena je kulturna manifestacija u Slavonskom\nBrodu čiji je cilj predstaviti brodskoj publici klasičnu i suvremenu glazbenu\numjetnost. Osnovana je 1990. godine i održava se redovito u ljetnim\nmjesecima. Manifestacija nastoji zadovoljiti kulturne potrebe slušatelja svih\nuzrasta. Širok raspon programa nastoji obuhvatiti različite glazbene žanrove,\nuvijek pazeći na vrhunsku kvalitetu odabranih izvođača i pritom\niskorištavajući sve prostorne kapacitete koje grad nudi. Ovom manifestacijom\nnašim posjetiteljima želimo pobliže prikazati svu ljepotu koja se može pronaći\nu umjetnosti i omogućiti im da se osobno uvjere u čari ovog ljetnog događaja.',
                            style: textStyleParagraph,
                          ),
                        ],
                      )
                    ],
                  ),
                  CustomDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          SelectableText(
                            'FIŠIJADA',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'Ovo je još jedan ljetni brodski događaj koji gradskim ulicama do kasno u noć\nširi prekrasan miris ribe. Svake godine veliki broj ekipa prijavi se na ovo\nsimpatično natjecanja gdje mogu osvojiti vrijedne nagrade, ali i titulu najboljeg\nkuhara fiša. Za sve natjecatelje osigurano je po tri kilograma očišćene ribe\nujednačene kvalitete, sav potreban pribor za jelo te stol i klupe za osam osoba\npo natjecateljskoj skupini. Za potrebe pripreme fiša natjecatelji sami priskrbljuju\npotrebne začine i kotlić, ne manji od 10 litara. Također, u večernjim satima na\nsredišnjoj pozornici, slijedi glazbeni program, a goste i sudionike natjecanja\nsvake godine uveseljavaju zvuci tambure naših lokalnih tamburaša!',
                            style: textStyleParagraph,
                          )
                        ],
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Image(
                          image: AssetImage('dogadanja_4.jpg'),
                        ),
                      )
                    ],
                  ),
                  CustomDivider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ),
                          ],
                        ),
                        child: Image(
                          image: AssetImage('dogadanja_5.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            'CMC 200 - SLAVONIJA FEST',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'Slavonski Brod je unazad nekoliko godina domaćin Slavonija festu CMC 200,\nfestivalu koji u nekoliko dana “okupira” ovaj grad i dovede neke od najvećih\nregionalnih glazbenih zvijezda. Slavonski Brod može se pohvaliti da je sjedište\njednog od najvećih festivala domaće glazbe u Hrvatskoj; jedinstven sa svojim\nsadržajima privuće na tisuće posjetitelja koji uživaju u brojnim glazbenim\nsadržajima. Osim dvije glazbene večeri, Rock maratona i Slavonija festa CMC 200,\nna glavnom gradskom trgu Ivane Brlić Mažuranić oba dana organizirani su\nGuitarJamSession i PianoJamSession u caffe barovima, a od strane Turističke\nzajednice grada Slavonskog Broda organizirane su i razne promocije domaćih\nvina i rakije.',
                            style: textStyleParagraph,
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 66.0),
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
