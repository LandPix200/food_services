
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import 'devenir_partenaire.dart';

class NoPartenairePage extends StatelessWidget {
  const NoPartenairePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Text(
              "Souhaitez-vous devenir représentant de e-vents dans votre localité ? Inscrivez-vous ici !!",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            child: Text(
              "Prenez en charge la satisfaction de notre clientèle de votre localité  en vous inscrivant en tant que partenaire légale de e-vents",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          SizedBox(
            height: 100,
          ),
          GFButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return DevenirPtnDialog();
                },
              );
            },
            text: "JE DEVIENS PARTENAIRE MAINTENANT",
            padding: EdgeInsets.all(10),
            size: 50,
            color: Theme.of(context).primaryColor,
            type: GFButtonType.outline2x,
            textColor: Colors.black,
            hoverColor: Colors.transparent,
            hoverElevation: 0,
            splashColor: Colors.amber,
          ),
        ],
      ),
    );
  }
}
