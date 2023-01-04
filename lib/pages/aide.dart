import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          children: [
            Text(
              "Profitez de toute l'aide dont vous avez besoin",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            )
          ],
        )),
      ),
    );
  }
}
