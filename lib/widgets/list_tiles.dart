import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  const DrawerTile({
    Key? key,
    required this.text,
    required this.color,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final String text;
  final Color color;
  final IconData icon;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          onTap;
          Navigator.of(context).pop();
        },
        tileColor: Theme.of(context).primaryColor.withOpacity(0.2),
        leading: Icon(
          icon,
          color: Theme.of(context).primaryColor,
        ),
        title: Text(text),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
