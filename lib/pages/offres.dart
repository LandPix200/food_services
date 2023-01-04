import 'package:flutter/material.dart';

import '../classes/offre.dart';
import '../widgets/cards.dart';

class OffresPage extends StatelessWidget {
  const OffresPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: offres.map((o) => OffreCard(offre: o)).toList(),
          )
        ],
      ),
    );
  }
}
