import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/notesState.dart';
import 'package:notes_app/modal/NoteModal.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit(): super(NotesIni()) ;

   getNote(){
    emit(NotesLoading());
    try {
      var notesBox =Hive.box<NoteModal>('notes_box');



      emit(NotesSuccess(notesBox.values.toList()));
    } on Exception catch (e) {
      emit( NotesFailed(e.toString()));
    }
  }

  }

