import 'package:flutter/material.dart';
import 'package:notes_app/widget/customAppBar.dart';
import 'package:notes_app/widget/customTextfield.dart';

class Notesedit extends StatelessWidget {
  const Notesedit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Customappbar(
            text: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          Customtextfield(hintText: 'Title'),
          SizedBox(
            height: 30,
          ),
          Customtextfield(
            hintText: 'Content',
            maxline: 5,
          )
        ],
      ),
    ));
  }
}
