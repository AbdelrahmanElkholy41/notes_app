import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/Add_notes_cubit.dart';
import 'package:notes_app/screens/HomePage.dart';
import 'package:notes_app/widget/simple_bloc_observer.dart';

import 'modal/NoteModal.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  Hive.registerAdapter(NoteModalAdapter());
  await Hive.openBox<NoteModal>('notes_box');



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
