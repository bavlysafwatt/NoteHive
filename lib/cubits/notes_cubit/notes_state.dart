part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> notesList;

  NotesSuccess({required this.notesList});
}

final class NotesFailure extends NotesState {
  final String erroeMessage;

  NotesFailure({required this.erroeMessage});
}
