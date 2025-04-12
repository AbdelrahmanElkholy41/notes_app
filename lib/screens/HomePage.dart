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
                return const contentButtonSheet();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: NotesBody(),
      ),
    );
  }
}
