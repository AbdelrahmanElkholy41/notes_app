import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/Add_notes_cubit.dart';
import 'package:notes_app/screens/HomePage.dart';

import 'modal/NoteModal.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notes_box');
  Hive.registerAdapter(NoteModalAdapter());
  runApp(const NotesAPP());
}

class NotesAPP extends StatelessWidget {
  const NotesAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AddNoteCubit()),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          //scaffoldBackgroundColor: Colors.
        ),
        home: Homepage(),
      ),
    );
  }
}
