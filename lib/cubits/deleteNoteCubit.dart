import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/deleteNoteState.dart';
import 'package:notes_app/modal/NoteModal.dart';

class DeleteNoteCubit extends Cubit<DeleteNoteState>{
  DeleteNoteCubit():super(DeleteNoteini());


  deleteNotes(NoteModal note){


    var notesBox = Hive.box<NoteModal>('notes_box');

     notesBox.delete(note);
  }

}