import 'package:flutter/material.dart';
import 'package:notes_app/widget/customTextfield.dart';
import 'package:notes_app/widget/notes_body.dart';

import '../widget/contentButtonSheet.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return contentButtonSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: NotesBody(),
      ),
    );
  }
}
