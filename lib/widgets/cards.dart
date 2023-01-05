// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_services/classes/offre.dart';
import 'package:getwidget/getwidget.dart';

class OffreCard extends StatelessWidget {
  const OffreCard({
    Key? key,
    required this.offre,
  }) : super(key: key);

  final Offre offre;

  @override
  Widget build(BuildContext context) {
    return GFCard(
      boxFit: BoxFit.cover,
      titlePosition: GFPosition.end,
      buttonBar: GFButtonBar(padding: EdgeInsets.only(top: 40), children: [
        GFButton(
          size: 40,
          color: Theme.of(context).primaryColor.withOpacity(0.7),
          elevation: 3,
          onPressed: () {},
          text: "Je veux cette offre",
        )
      ]),
      height: 300,
      imageOverlay: Image.network(
      
        offre.imageUrl,
        cacheHeight: 150,
        cacheWidth: 300,
        height: 150,
        fit: BoxFit.cover,
      ).image,
      showOverlayImage: true,
      title: GFListTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            offre.title,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(color: Colors.white),
          ),
        ),
        color: Colors.black.withOpacity(0.7),
        description: Text(
          offre.description,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
