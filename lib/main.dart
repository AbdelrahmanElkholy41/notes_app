import 'package:flutter/material.dart';
import 'package:notes_app/screens/HomePage.dart';

void main() {
  runApp(const NotesAPP());
}
class NotesAPP extends StatelessWidget {
  const NotesAPP({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Homepage(),
    );
  }
}
