import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/screens/HomePage.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
  runApp(const NotesAPP());
}
class NotesAPP extends StatelessWidget {
  const NotesAPP({super.key});

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        //scaffoldBackgroundColor: Colors.


      ),
      home: Homepage(),
    );
  }
}
