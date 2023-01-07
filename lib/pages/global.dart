// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:food_services/logic/send.dart';
import 'package:food_services/pages/contact.dart';
import 'package:food_services/pages/dashboard.dart';
import 'package:food_services/pages/no_partenaire.dart';
import 'package:food_services/pages/offres.dart';

import 'aide.dart';

class GlobalPage extends StatefulWidget {
  const GlobalPage({super.key});

  @override
  State<GlobalPage> createState() => _GlobalPageState();
}

class _GlobalPageState extends State<GlobalPage> {
  int currentItem = 0;
  String currentTitle = "Tableau de bord";
  late Widget curPage;

  List<Widget> pages = [
    OffresPage(),
    NoPartenairePage(),
    ContactPage(),
    HelpPage(),
  ];

  @override
  void initState() {
    curPage = DashBoard();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        leading: IconButton(
          tooltip: "Tableau de bord",
          onPressed: () {
            setState(() {
              currentTitle = "Tableau de bord";
              curPage = DashBoard();
            });
          },
          icon: Icon(
            Icons.space_dashboard_rounded,
            color: Theme.of(context).primaryColor.withGreen(50),
          ),
        ),
        title: Text(
          currentTitle,
          style: Theme.of(context).textTheme.headline1!.copyWith(
                color: Colors.black54,
              ),
        ),
        actions: [
          IconButton(
            tooltip: "Partager l'application",
            onPressed: () async {
              await launchWhatsAppUri();
            },
            icon: Icon(
              Icons.share,
            ),
          ),
        ],
        elevation: 0,
      ),
      body: curPage,
      //
      bottomNavigationBar: BottomNavigationBar(
          onTap: ((value) {}),
          iconSize: 25,
          currentIndex: currentItem,
          unselectedItemColor: Theme.of(context).primaryColor.withOpacity(0.4),
          unselectedIconTheme: IconThemeData(
            size: 35,
          ),
          // selectedFontSize: 16,
          selectedItemColor: Theme.of(context).primaryColor,
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.6),
          items: [
            BottomNavigationBarItem(
              icon: IconButton(
                  splashColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(() {
                      currentItem = 0;
                      currentTitle = "Offres";
                      setState(() {
                        curPage = pages[currentItem];
                      });
                    });
                  },
                  icon: Icon(
                    Icons.local_laundry_service_rounded,
                  )),
              label: "Offres",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  splashColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(() {
                      currentItem = 1;
                      currentTitle = "Partenariat";
                      setState(() {
                        curPage = pages[currentItem];
                      });
                    });
                  },
                  icon: Icon(
                    Icons.food_bank_rounded,
                  )),
              label: "Partenariat",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  splashColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(() {
                      currentItem = 2;
                      currentTitle = "Contact";
                      setState(() {
                        curPage = pages[currentItem];
                      });
                    });
                  },
                  icon: Icon(
                    Icons.contact_page_rounded,
                  )),
              label: "Contact",
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                  splashColor: Theme.of(context).primaryColor,
                  onPressed: () {
                    setState(() {
                      currentItem = 3;
                      currentTitle = "Aide";
                      setState(() {
                        curPage = pages[currentItem];
                      });
                    });
                  },
                  icon: Icon(
                    Icons.help_outline_rounded,
                  )),
              label: "Aide",
            ),
          ]),
    );
  }
}
