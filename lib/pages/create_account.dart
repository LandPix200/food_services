// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../widgets/inputs.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  TextEditingController nom = TextEditingController();
  TextEditingController prenom = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController ville = TextEditingController();
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
                "Salut, Merci de nous faire confance.",
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
                child: Form(
                  key: formKey,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: Column(
                    children: [
                      InputCA(
                        hint: "Nom",
                        icon: Icons.person,
                        type: GfFormFieldType.name,
                      ),
                      InputCA(
                        hint: "Prénom",
                        icon: Icons.person,
                        type: GfFormFieldType.name,
                      ),
                      InputCA(
                        hint: "Numéro de téléphone Whatsapp",
                        icon: Icons.whatsapp,
                        type: GfFormFieldType.phone,
                      ),
                      InputCA(
                        hint: "Ville",
                        icon: Icons.location_city,
                        type: GfFormFieldType.text,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 30),
                        child: GFButton(
                          onPressed: () {
                            final formValid = formKey.currentState!.validate();
                            if (formValid) {
                              // ignore: todo
                              // TODO: implémenter le code d'enregistrer un nouvel utilisateur
                            }
                          },
                          text: "Je crèe mon compte",
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
