import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/modal/NoteModal.dart';

import '../cubits/notesCubit.dart';
import '../cubits/notesState.dart';
import 'cardNote.dart';
import 'customAppBar.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({super.key});

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit,NotesState>(
      builder: (BuildContext context, state) {
        List<NoteModal>notes=BlocProvider.of<NotesCubit>(context).notes?? [];
        return   Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const Customappbar(text: 'Notes', icon: Icons.search,),


            Expanded(
              child: ListView.builder(
             itemCount: notes.length,

                itemBuilder: (BuildContext context, int index)
                {

                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),

                    child: cardNote(notes: notes[index],),
                  );

                },

              ),
            )
          ],
        );
      },

    );
  }
}

