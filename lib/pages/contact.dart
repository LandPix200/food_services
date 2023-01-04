// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 30, horizontal: 100),
            child: Column(
              children: [
                GFButton(
                  fullWidthButton: true,
                  onPressed: () {},
                  icon: Icon(Icons.email),
                  color: Colors.orange,
                  text: "Email",
                ),
                GFButton(
                  fullWidthButton: true,
                  onPressed: () {},
                  icon: Icon(Icons.facebook),
                  color: Colors.blue,
                  text: "Facebook",
                ),
                GFButton(
                  fullWidthButton: true,
                  onPressed: () {},
                  icon: Icon(Icons.whatsapp),
                  color: Colors.green,
                  text: "Whatsapp",
                ),
                GFButton(
                  fullWidthButton: true,
                  onPressed: () {},
                  icon: Icon(Icons.video_call),
                  color: Colors.red,
                  text: "Youtube",
                ),
                GFButton(
                  fullWidthButton: true,
                  onPressed: () {},
                  icon: Icon(Icons.web_stories),
                  color: Colors.teal,
                  text: "Site internet",
                ),
                GFButton(
                  fullWidthButton: true,
                  onPressed: () {},
                  icon: Icon(Icons.phone),
                  color: Colors.purple,
                  text: "Téléphone",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
