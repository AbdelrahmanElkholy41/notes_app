import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/cubits/notesCubit.dart';
import 'package:notes_app/modal/NoteModal.dart';
import 'package:notes_app/screens/notesEdit.dart';

class cardNote extends StatelessWidget {
  const cardNote({
    super.key, required this.notes,
  });
final NoteModal notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Notesedit(note: notes,)),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
            color:  Color(notes.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(
                notes.title,
                style: const TextStyle(fontSize: 30, color: Colors.black),
              ),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text(
                    notes.subtitle,
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withOpacity(.5))),
              ),
              trailing: IconButton(
                onPressed: () {
                  notes.delete();

                  BlocProvider.of<NotesCubit>(context).getNote();
                },
                icon: const Icon(Icons.delete),
                color: Colors.black,
                iconSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(  DateFormat('MMMM d').format(DateTime.parse(notes.date)),

                    style: TextStyle(fontSize: 16, color: Colors.black.withOpacity(.4))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
