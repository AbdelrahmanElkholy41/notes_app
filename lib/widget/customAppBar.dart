import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customSearchIcon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.text, required this.icon, this.onPressed});
  final String text;
  final IconData icon;
  final void Function()?onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
        Customsearchicon(
          onPressed: onPressed,
          icon: icon,
        )
      ],
    );
  }
}
