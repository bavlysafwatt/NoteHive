// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  readAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>('notesBox');
      emit(NotesSuccess(notesList: notesBox.values.toList()));
    } catch (e) {
      emit(NotesFailure(erroeMessage: e.toString()));
    }
  }
}
