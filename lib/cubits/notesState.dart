import 'package:notes_app/modal/NoteModal.dart';

class NotesState {}

class NotesSuccess extends NotesState {

  final List<NoteModal>notes;

  NotesSuccess(this.notes);
}

class NotesLoading extends NotesState {}

class NotesFailed extends NotesState {
  final String errMessage;
  NotesFailed(this.errMessage);
}

class NotesIni extends NotesState {}
