import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mms_sb/extra/divider.dart';
import 'package:mms_sb/extra/scrollBack.dart';
import 'package:mms_sb/footer/footer.dart';
import 'package:mms_sb/navbar/navbar.dart';

class ZnamenitostiScreen extends StatelessWidget {
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
        debugShowCheckedModeBanner: false,
        title: 'Znamenitosti',
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
                      image: AssetImage('znamenitosti_header.jpg'),
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
                          image: AssetImage('znamenitosti_1.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            'FRANJEVAČKI SAMOSTAN',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'Franjevci djeluju u Slavonskom Brodu od 13. st., pa tako daju našem gradu\nvjersku, kulturnu, gospodarstvenu, ali i političku fizionomiju. Prvi samostan\ngrade 1694., a kamen temeljac nove crkve postavio je barun Ivan Trenk\n12. kolovoza 1723. godine. Franjevačka crkva predstavlja najveću crkvu u\nSlavoniji, a ujedno je jedna od najmarkantnijih baroknih građevina u Slavoniji.\n\nKnjižnica, arhiv, poznata kronika i glazbeni arhiv govore o visokoj kulturi te\nškolstvu koje potječe iz samostana već koncem 17.st. Samostan je ukinut\n1787. i to prvenstveno radi stambenog prostora za vojno povjerenstvo i\nnjemačku školu. Franjevci se iz Đakova vraćaju u Brod 1806. godine.\nU samostanu se okupljaju vjernici željni intenzivnijeg duhovnog života, a\nmože se pogledati i Spomen soba Dragutina Tadijanovića.',
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
                            'TVRĐAVA BROD',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'U Brodu, jednom od važnih strateških i prometnih mjesta koje je kontroliralo\ngranični prijelaz prema Turskoj i povezivalo glavne trgovačku putove, Austrija\nu vremenu 1715.-1780. gradi veliku Carsku i kraljevsku slavonsku pograničnu\ntvrđavu Brod koja pripada velikom obrambenom sustavu na granici prema\nTurskom carstvu. Gradili su je seljaci graničari; njih 634 dnevno.\n\nTvrđava pravilnog zvjezdolikog oblika svojim protežnostima, najveća je\ngrađevina svoje vrste u Hrvatskoj, a među većima u Europi. Tvrđavu je pod\npunom spremnošću moglo braniti 4 000 vojnika, a pričuve vode i živeži\nomogućivale su izdržavanje i tridesetodnevne opsade. Na bedemima i\nbastionima bilo je 150 topova.  Unutar kvadratnog prostora tvrđave podignute\nsu tri vojarne i kapela svete Ane, barokno djelo Hildebranta.',
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
                          image: AssetImage('znamenitosti_2.jpg'),
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
                          image: AssetImage('znamenitosti_3.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Column(
                        children: [
                          SelectableText(
                            'KUĆA BRLIĆEVIH',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'Obiteljska kuća sagrađena krajem 18. stoljeća na glavnom gradskom trgu,\nnestala je u velikom požaru 1882., a na njezinom mjestu podignuta je 1885.\nmoderna neoklasicistička jednokatnica, danas spomenik kulture pod\nzaštitom. U autentičnom povijesnom ambijentu doma Brlićevih stvarale su i\nnalazile nadahnuće za svoje mnogostrane interese ličnosti koje su značajno\npridonijele javnom, kulturnom i političkom životu Broda i Hrvatske: Ignjat\nAlojzije Brlić, pisac i jezikoslovac, Andrija Torkvat Brlić, publicist i političar,\nFani Brlić, rođena Daubachy, slikarica, te Ivana Brlić-Mažuranić, književnica.\n\nBogata knjižnica, jedna od najznačajnijih u Hrvatskoj u 19. st. i arhiv s\nvrijednom prepiskom i izvornom građom - stoljetno obiteljsko naslijeđe,\ndanas je vrijedan dio nacionalne kulturne baštine.',
                            style: textStyleParagraph,
                          )
                        ],
                      ),
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
