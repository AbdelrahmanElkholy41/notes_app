import 'package:flutter/material.dart';
import 'package:notes_app/widget/customAppBar.dart';
import 'package:notes_app/widget/notes_body.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {},child: Icon(Icons.add),),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: NotesBody(),
      ),
    );
  }
}
