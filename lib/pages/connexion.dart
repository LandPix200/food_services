// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../widgets/inputs.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Hey, te revoilà. Tu dois de connecter avant d'entrer.",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 40),
              child: Image.network(
                "https://cdn-icons-png.flaticon.com/512/1057/1057240.png?w=740&t=st=1672576099~exp=1672576699~hmac=66ec3b67617d43121f08a6ff98abf2049f87ae1972b8cd02408760d1c47fc96f",
                scale: 0.1,
                width: 125,
                filterQuality: FilterQuality.medium,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  InputCA(
                    hint: "Nom",
                    icon: Icons.person,
                    type: GfFormFieldType.name,
                  ),
                  InputCA(
                    hint: "Numéro de téléphone Whatsapp",
                    icon: Icons.whatsapp,
                    type: GfFormFieldType.phone,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 30),
                    child: GFButton(
                      onPressed: () {},
                      text: "Je me connecte",
                      size: 50,
                      fullWidthButton: true,
                      textStyle: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            //
          ],
        ),
      ),
    );
  }
}
