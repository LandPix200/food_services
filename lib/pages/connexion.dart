// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, todo

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../widgets/inputs.dart';

class ConnexionPage extends StatefulWidget {
  const ConnexionPage({super.key});

  @override
  State<ConnexionPage> createState() => _ConnexionPageState();
}

class _ConnexionPageState extends State<ConnexionPage> {
  TextEditingController nom = TextEditingController();
  TextEditingController phone = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Hey, te revoilà. Tu dois de connecter avant d'entrer.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20, top: 40),
                child: Image.asset(
                  "assets/images/insc.png",
                  scale: 0.1,
                  width: 125,
                  filterQuality: FilterQuality.medium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      InputCA(
                        controller: nom,
                        hint: "Nom",
                        icon: Icons.person,
                        type: GfFormFieldType.name,
                      ),
                      InputCA(
                        controller: phone,
                        hint: "Numéro de téléphone Whatsapp",
                        icon: Icons.whatsapp,
                        type: GfFormFieldType.phone,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 30),
                        child: GFButton(
                          onPressed: () {
                            final validateForm =
                                formKey.currentState!.validate();

                            if (validateForm) {
                              // TODO: Faire la fonction de connexion de l'utilisateur
                            }
                          },
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
              ),

              //
            ],
          ),
        ),
      ),
    );
  }
}
