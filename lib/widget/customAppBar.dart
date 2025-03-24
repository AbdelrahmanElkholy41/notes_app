import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customSearchIcon.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key, required this.text, required this.icon});
final String text;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:MainAxisAlignment.spaceBetween,
      children: [
         Text(text,style: TextStyle(fontSize: 28),),
        Customsearchicon(icon: icon,)







      ],
    );
  }
}
