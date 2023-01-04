import 'package:flutter/material.dart';
import 'package:getwidget/components/form/form_field/gf_form_field.dart';
import 'package:getwidget/types/gf_form_field_type.dart';

class InputCA extends StatelessWidget {
  const InputCA({
    Key? key,
    required this.hint,
    this.controller,
    this.icon,
    this.type = GfFormFieldType.text,
    this.obscure = false,
  }) : super(key: key);

  final String hint;
  final TextEditingController? controller;
  final IconData? icon;
  final bool obscure;
  final GfFormFieldType type;

  @override
  Widget build(BuildContext context) {
    return GfFormField(
      backgroundcolor: Colors.transparent,
      editingbordercolor: Theme.of(context).primaryColor,
      idlebordercolor: Colors.black,
      borderwidth: 1,
      hintText: hint,
      iconPrefix: Icon(icon),
      gfFormFieldType: type,
      obscureText: obscure,
    );
  }
}
