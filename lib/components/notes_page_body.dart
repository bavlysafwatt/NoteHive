import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/components/custom_app_bar_builder.dart';
import 'package:notes_app/components/notes_list.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

class NotesPageBody extends StatefulWidget {
  const NotesPageBody({super.key});

  @override
  State<NotesPageBody> createState() => _NotesPageBodyState();
}

class _NotesPageBodyState extends State<NotesPageBody> {
  bool isSearching = false;

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).readAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
      child: Column(
        children: [
          CustomAppBarBuilder(),
          NotesList(),
        ],
      ),
    );
  }
}
