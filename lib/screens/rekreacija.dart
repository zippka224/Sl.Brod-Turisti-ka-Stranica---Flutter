import 'package:flutter/material.dart';
import 'package:mms_sb/extra/divider.dart';
import 'package:mms_sb/extra/scrollBack.dart';
import 'package:mms_sb/footer/footer.dart';
import 'package:mms_sb/navbar/navbar.dart';

class RekreacijaScreen extends StatelessWidget {
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
        title: 'Rekreacija',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          floatingActionButton: ScrollBackWidget(controller: controller),
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
                      image: AssetImage('rekreacija_header.jpg'),
                    ),
                  ),
                  CustomDivider(),
                  //ŠRC Poloj
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
                          image: AssetImage('poloj.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            'ŠRC POLOJ',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'Sportsko rekreativni centar Poloj je omiljeno ljetno okupljalište Brođana,\nudaljeno od gradskog centra samo 3 km istočno od grada. Predivna\npješčana plaža na zavoju rijeke Save, okružena šumom i obogaćena brojnim\nsadržajima \(ugostiteljstvo, sportski tereni, javni roštilji, dječja igrališta...\)\npredstavlja jednu od najljepših riječnih plaža u Europi. Do ovog uređenog\nkupališta s organiziranom službom spašavanja vode 2,5 km duge jogging i\nbiciklistička staza. Posebna atrakcija su riječni splavovi s kućicama koji se\nprotežu na cijelom potezu od gradskog riječnog šetališta do Poloja, tzv\nSplavarska ulica. Život se ljeti seli iz Slavonskog Broda na Poloj. Pridružite se\ni vi, od gradskog riječnog šetališta do Poloja!',
                            style: textStyleParagraph,
                          ),
                        ],
                      )
                    ],
                  ),
                  CustomDivider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SelectableText(
                        'SPORTSKO REKRACIJSKA ZONA "VIJUŠ"',
                        style: textStyleHeading,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SelectableText(
                        'Na području ove zone nalazi se Sportska dvorana „Vijuš“, kapaciteta 2.200 mjesta, jedna od najfunkcionalnijih sportskih dvorana u\nHrvatskoj i mjesto održavanja brojnih sportskih susreta, ali i treninga vrhunskih domaćih i inozemnih sportskih ekipa. U sklopu\ndvorane je i kuglana, a pored dvorane izgrađeni su vanjski i zatvoreni gradski bazeni.\nU blizini dvorane nalazi se nogometni stadion na čijoj je fasadi oslikan veliki mural s likovima Marija Mandžukića i Ivice Olića koji su\nna ovom stadionu započeli karijeru, a na savskoj šetnici koja povezuje središte grada sa sportsko-rekreacijskim centrom i\npješčanom plažom Poloj tzv. "malo gradsko kupalište" na kojem je na površini od 1.300 kvadratnih metara oslikana jedna od\nnajvećih trodimenzionalnih slika na svijetu.\nU ovoj gradskoj zoni smjestio se i trim park, a tu je i biciklistička staza.',
                        textAlign: TextAlign.center,
                        style: textStyleParagraph,
                      ),
                      SizedBox(
                        height: 38,
                      ),
                      Image.asset('vijus.jpg'),
                      SizedBox(
                        height: 54,
                      ),
                      Image.asset('vijus2.jpg'),
                      CustomDivider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              SelectableText(
                                'JEZERO PETNJA',
                                style: textStyleHeading,
                              ),
                              SizedBox(
                                height: 10.0,
                              ),
                              SelectableText(
                                'Umjetno jezero Petnja, idealno odredište za šetnju prirodom, kupanje i ribolov,\nnalazi se na južnoj strani Dilj-gore, 7 km sjeverozapadno od Slavonskog\nBroda. Jezero oduševljava svojim izgledom, šumskim okruženjem, pješačkim\nstazama, mogućnostima ribolova, veslanja i drugih vodenih sportova, te čistim\nzrakom. Na malom cestovnom putu do jezera nalazi se nekoliko lokalnih vinara\nkoji će vam rado prodati vrhunsko vino. Poseban šarm jezera daje spajanje\nplavetnila vode s zelenilom šume, što joj je donijelo epitet "planinsko oko".\nBogat izbor riba učinio je Petnju jednom od glavnih odredišta za\nkontinentalni sportski ribolov.',
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
                              image: AssetImage('petnja.jpg'),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 47,
                      ),
                      Footer(),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
