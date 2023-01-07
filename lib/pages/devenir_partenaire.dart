// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

import '../widgets/inputs.dart';

class DevenirPtnDialog extends StatefulWidget {
  const DevenirPtnDialog({super.key});

  @override
  State<DevenirPtnDialog> createState() => _DevenirPtnDialogState();
}

class _DevenirPtnDialogState extends State<DevenirPtnDialog> {
  TextEditingController entreprise = TextEditingController();
  TextEditingController pays = TextEditingController();
  TextEditingController ville = TextEditingController();
  TextEditingController registre = TextEditingController();
  TextEditingController specialites = TextEditingController();
  TextEditingController adresse = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController mdp = TextEditingController();
  TextEditingController cmdp = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GFCard(
        title: GFListTile(
          title: Text(
            "Remplissez ce formulaire pour devenir partenaire",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 18,
                ),
          ),
        ),
        content: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              InputCA(
                hint: "Le nom de votre entreprise",
              ),
              InputCA(
                hint: "Votre pays",
                icon: Icons.location_city,
                type: GfFormFieldType.text,
              ),
              InputCA(
                hint: "Votre ville",
                icon: Icons.location_city,
              ),
              InputCA(
                hint: "Registre de commerce",
              ),
              InputCA(
                hint: "Spécialités (Séparer par des virgules)",
              ),
              InputCA(
                hint: "Adresse",
              ),
              InputCA(
                hint: "E-mail",
                icon: Icons.email,
                type: GfFormFieldType.email,
              ),
              InputCA(
                hint: "N° de téléphone whatsapp",
                icon: Icons.whatsapp,
                type: GfFormFieldType.phone,
              ),
              InputCA(
                hint: "Mot de passe",
                icon: Icons.security,
                obscure: true,
                type: GfFormFieldType.password,
              ),
              InputCA(
                hint: "Confirmation",
                icon: Icons.security,
                obscure: true,
                type: GfFormFieldType.password,
              ),
              GFButtonBar(children: [
                GFButton(
                  fullWidthButton: true,
                  onPressed: () {
                    final isValid = formKey.currentState!.validate();
                    if (isValid) {
                      Navigator.of(context).pop(true);
                    } else {}

                    // ignore: todo
                    // TODO: Implementer un pop(User) afin de le prendre et de
                  },
                  text: "JE DEVIENS PARTENAIRE",
                ),
                GFButton(
                  color: Colors.red,
                  fullWidthButton: true,
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  text: "JE NE PREFAIRE PAS",
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
