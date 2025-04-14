import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/modal/NoteModal.dart';
import 'package:notes_app/widget/customAppBar.dart';
import 'package:notes_app/widget/customTextField.dart';
import 'package:notes_app/cubits/notesCubit.dart';

import '../cubits/Add_notes_cubit.dart';
import '../widget/contentButtonSheet.dart';
import '../widget/editNoteColorsList.dart';


class Notesedit extends StatefulWidget {
  const Notesedit({super.key, required this.note});
final NoteModal note;

  @override
  State<Notesedit> createState() => _NoteseditState();
}

class _NoteseditState extends State<Notesedit> {
    String? title;
   String? con;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Customappbar(
            onPressed: (){
              widget.note.title=title?? widget.note.title;
              widget.note.subtitle=con?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).getNote();
              Navigator.pop(context);


            },
            text: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          Customtextfield(
          onChanged: (value){
            title=value;
          },
              hintText: widget.note.title),
          const SizedBox(
            height: 30,
          ),
          Customtextfield(
            onChanged: (value){
              con=value;
            },
            hintText: widget.note.subtitle,
            maxline: 5,
          ),
          const SizedBox(
            height: 20,
          ),
           EditNotesColorListView(note: widget.note,)
        ],
      ),
    ));
  }
}
