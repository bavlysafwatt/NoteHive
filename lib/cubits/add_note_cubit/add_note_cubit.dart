// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  int noteColor = 0xffFF1053;

  addNote(NoteModel model) async {
    model.color = noteColor;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>('notesBox');
      await notesBox.add(model);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(erroeMessage: e.toString()));
    }
  }
}
