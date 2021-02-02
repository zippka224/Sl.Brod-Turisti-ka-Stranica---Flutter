import 'package:flutter/material.dart';
import 'package:mms_sb/extra/divider.dart';
import 'package:mms_sb/extra/scrollBack.dart';
import 'package:mms_sb/footer/footer.dart';
import 'package:mms_sb/navbar/navbar.dart';

class OGraduScreen extends StatelessWidget {
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
        title: 'O gradu',
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
                      image: AssetImage('ogradu_header.jpg'),
                    ),
                  ),
                  CustomDivider(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          image: AssetImage('ogradu_1.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 130.0),
                            child: SelectableText(
                              'GRAD SLAVONSKI BROD',
                              style: textStyleHeading,
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'Grad Slavonski Brod, po veličini sedmi grad u Republici Hrvatskoj s\n 59.141 stanovnika, nalazi se na obali rijeka Save te proteže na blage padine\nDilj-gore. Zauzima površinu od 54,45 kvadratnih metara. Izgrađen je na\nmjestu rimske Marsonie, na raskrižju najvažnijih međunarodnih pravaca koji\npovezuju zemlje Europe s Bliskim istokom, uz granicu sa Bosnom i\n Hercegovinom. Najveći je grad slavonske Posavine.',
                            style: textStyleParagraph,
                          ),
                          SizedBox(
                            height: 32.0,
                          ),
                          SelectableText(
                            'UPRAVA',
                            style: TextStyle(
                              fontFamily: 'Mulish',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(50, 50, 50, 1.0),
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          SelectableText(
                            'Mirko Duspara dr. med., gradonačelnik je Slavonskog Broda, a zamjenici\ngradonačelnika su Hrvoje Andrić prof. i Tea Tomas dipl. oec.',
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
                            'RAZVOJ GRADA',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'Dolazak predaka, današnjih stanovnika Grada i Županije obogatio je ovaj kraj\nkulturom, tradicijom, jezikom i znanjima u pojedinim obrtima i industrijskim\ngranama, koji su bili u prošlosti, a i danas su kamen temeljac industrije ovog\ngrada koju čine: metaloprerađivačka djelatnost, drvno industrijska djelatnost,\npoljoprivredno-prehrambena djelatnost i komunalna djelatnost.',
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
                          image: AssetImage('ogradu_2.jpg'),
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
                          image: AssetImage('ogradu_3.jpg'),
                        ),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SelectableText(
                            'GEOGRAFSKA VAŽNOST',
                            style: textStyleHeading,
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          SelectableText(
                            'Kako je već navedeno, grad je zemljopisno smješten na važnim\nprometnicama željeznici, autocesti, rijeci Savi, ima i športski aerodrom, a\nosim prometnog i tranzitnog središta ima značajke pograničnog grada.\nUpravo ta činjenica imala je za posljedicu da je grad postao multikulturno i\nmultietničko središte u ovom dijelu Hrvatske.',
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
