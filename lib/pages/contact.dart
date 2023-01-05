// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Text(
                "Vous avez plusieurs façons de nous contacter",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
            SocialButtons(),
          ],
        ),
      ),
    );
  }
}

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool fullW = false;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Wrap(
        spacing: 20,
        alignment: WrapAlignment.spaceBetween,
        children: [
          GFButton(
            fullWidthButton: fullW,
            onPressed: () {},
            icon: Icon(Icons.email),
            color: Colors.orange,
            text: "Email",
          ),
          GFButton(
            fullWidthButton: fullW,
            onPressed: () {},
            icon: Icon(Icons.facebook),
            color: Colors.blue,
            text: "Facebook",
          ),
          GFButton(
            fullWidthButton: fullW,
            onPressed: () {},
            icon: Icon(Icons.whatsapp),
            color: Colors.green,
            text: "Whatsapp",
          ),
          GFButton(
            fullWidthButton: fullW,
            onPressed: () {},
            icon: Icon(Icons.video_call),
            color: Colors.red,
            text: "Youtube",
          ),
          GFButton(
            fullWidthButton: fullW,
            onPressed: () {},
            icon: Icon(Icons.web_stories),
            color: Colors.teal,
            text: "Site internet",
          ),
          GFButton(
            fullWidthButton: fullW,
            onPressed: () {},
            icon: Icon(Icons.phone),
            color: Colors.purple,
            text: "Téléphone",
          ),
        ],
      ),
    );
  }
}
