// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notesList;

  readAllNotes({String value = ''}) {
    var notesBox = Hive.box<NoteModel>('notesBox');
    notesList = notesBox.values.toList();
    if (value.isNotEmpty && value != '') {
      filterNotes(value: value);
    }
    emit(NotesRefresh());
  }

  filterNotes({required String value}) {
    List<NoteModel> filteredNotes = [];
    if (notesList == null || notesList!.isEmpty) {
      return;
    }
    for (int i = 0; i < notesList!.length; ++i) {
      if (notesList![i].title.toLowerCase().contains(value.toLowerCase())) {
        filteredNotes.add(notesList![i]);
      }
    }
    notesList = filteredNotes;
  }
}
