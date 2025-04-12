import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/widget/customTextField.dart';
import 'package:notes_app/widget/notes_body.dart';

import '../cubits/notesCubit.dart';
import '../widget/contentButtonSheet.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
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
      ),
    );
  }
}
