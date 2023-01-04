// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:food_services/pages/connexion.dart';
import 'package:food_services/pages/global.dart';
import 'package:getwidget/getwidget.dart';
import 'package:google_fonts/google_fonts.dart';

import 'create_account.dart';

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
        imageUrl:
            "https://img.freepik.com/free-vector/catering-service-concept-illustration_114360-7668.jpg?w=740&t=st=1672572424~exp=1672573024~hmac=1d2d9feb4425b1497596d8a456118f569b4e91675c527789eb168a47410fbd65",
        title: "E-VENTS",
        description: "Trouver des restorateurs pour vos évènements",
      ),

      //
      IntroPage(
        imageUrl:
            "https://img.freepik.com/free-vector/restaurant-quality-certificate-cafe-food-checking-bistro-customer-satisfaction-employee-control-catering-service-chef-waiter-cartoon-character_335657-3280.jpg?w=740&t=st=1672572894~exp=1672573494~hmac=1911c3833174ef667d95d836a81e6e32723f57dfb5054ab1e5890ac61bc6d9d1",
        title: "Faites-vous connaitre",
        description:
            "Enregistrez-vous dans l'appli entant que vendeur et obtenez des propositions et plus de clientèle",
      ),
      //
      IntroPage(
        imageUrl:
            "https://img.freepik.com/free-vector/foods-beverages-set_1308-105966.jpg?w=996&t=st=1672573449~exp=1672574049~hmac=2a1a1453c65b17e2d0b1ed2e8b5d32588f04a727c83619dff6849d12a570b52f",
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
        pageController: pageController,
        currentIndex: currentIndex,
        pageCount: pages.length,
        slides: pages,
        introScreenBottomNavigationBar: GFIntroScreenBottomNavigationBar(
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
      color: color == null ? Colors.blue.shade900 : color!,
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
            child: Image.network(
              imageUrl,
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
