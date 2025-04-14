import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/modal/NoteModal.dart';

part 'Add_notes_state.dart';



class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit() : super(AddNoteini());
Color color=const Color(0xff537D8D);

   AddNote(NoteModal note)async{
note.color=color.value;
     emit(AddNoteLoading());
     try {
       var notesBox =Hive.box<NoteModal>('notes_box');


       await notesBox.add(note);
       emit(AddNoteSuccess());
     } on Exception catch (e) {
     emit( AddNoteFailure(e.toString()));
     }
  }

}


