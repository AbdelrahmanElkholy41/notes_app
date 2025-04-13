import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/notesState.dart';
import 'package:notes_app/modal/NoteModal.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesIni());

  List<NoteModal>?notes;
  getNote() {

      var notesBox = Hive.box<NoteModal>('notes_box');

    notes= notesBox.values.toList();
    emit(NotesSuccess());

  }
}
