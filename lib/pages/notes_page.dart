import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/components/dialog_box.dart';
import 'package:notes_app/components/notes_page_body.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: SafeArea(
        child: Scaffold(
          body: const NotesPageBody(),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.grey.shade900,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => const DialogBox(),
              );
            },
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
