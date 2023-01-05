// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:food_services/pages/connexion.dart';
import 'package:food_services/pages/global.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({super.key});

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  PageController pageController = PageController();
  int currentIndex = 0;
  late List<Widget> pages;

  @override
  void initState() {
    pages = [
      IntroPage(
        imageUrl: "p1.png",
        title: "E-VENTS",
        description: "Trouver des restorateurs pour vos évènements",
      ),
      IntroPage(
        imageUrl: "handshake.png",
        title: "DEVENEZ PARTENAIRE",
        description: "Devenez partenaire avec nous et augmentez vos clients.",
      ),

      //
      IntroPage(
        imageUrl: "p2.png",
        title: "Faites-vous connaitre",
        description:
            "Enregistrez-vous dans l'appli entant que vendeur et obtenez des propositions et plus de clientèle",
      ),
      //
      IntroPage(
        imageUrl: "cam.png",
        title: "Une Grande variété",
        description:
            "Nos meilleurs chefs sont là et ils vous comprènent.\nResultat: des plats toujours très délicieux",
      ),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: GFIntroScreen(
        color: Theme.of(context).primaryColor.withOpacity(0.05),
        navigationBarColor: Theme.of(context).primaryColor.withOpacity(0.1),
        pageController: pageController,
        currentIndex: currentIndex,
        pageCount: pages.length,
        slides: pages,
        introScreenBottomNavigationBar: GFIntroScreenBottomNavigationBar(
            activeColor: Theme.of(context).primaryColor,
            inactiveColor: Theme.of(context).primaryColor.withOpacity(0.5),
            pageController: pageController,
            currentIndex: currentIndex,
            pageCount: pages.length,
            navigationBarColor: Colors.white,
            navigationBarMargin: EdgeInsets.all(0),
            backButton: IntroButton(
              text: "Retour",
            ),
            forwardButton: IntroButton(text: "Suivant"),
            skipButton: IntroButton(text: "Passer"),
            doneButton: IntroButton(text: "Commencer"),
            onDoneTap: () {
              showDialog(
                context: context,
                builder: ((context) {
                  return SimpleDialog(
                    backgroundColor: Colors.transparent,
                    children: [
                      GFButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => GlobalPage(),
                            ),
                          );
                        },
                        text: "Je souhaite m'inscrire",
                      ),
                      GFButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ConnexionPage(),
                            ),
                          );
                        },
                        text: "J'ai déja un compte",
                      )
                    ],
                  );
                }),
              );
            }),
      ),
    );
  }
}

class IntroButton extends StatelessWidget {
  const IntroButton({
    Key? key,
    required this.text,
    this.color,
  }) : super(key: key);

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GFButton(
      onPressed: null,
      text: text,
      color: color == null ? Colors.red.shade900 : color!,
      shape: GFButtonShape.pills,
      textStyle: GoogleFonts.aBeeZee(
        fontWeight: FontWeight.w300,
      ),
    );
  }
}

class IntroPage extends StatelessWidget {
  const IntroPage(
      {super.key,
      required this.imageUrl,
      required this.title,
      required this.description});

  final String imageUrl;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 15,
          ),
          Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Image.asset(
              "assets/images/$imageUrl",
              scale: 0.7,
              filterQuality: FilterQuality.medium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50),
            child: Text(
              description,
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
