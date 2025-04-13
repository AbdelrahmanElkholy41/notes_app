import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customsearchicon extends StatelessWidget {
  const Customsearchicon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()?onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 47,
        width: 47,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(.05),
            borderRadius: BorderRadius.circular(16)),
        child: Center(
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 30,
            ),
          ),
        ));
  }
}
