class NotesState {}




class NotesFailed extends NotesState {
  final String errMessage;
  NotesFailed(this.errMessage);
}

class NotesIni extends NotesState {}
