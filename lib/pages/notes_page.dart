import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_app_bar.dart';
import 'package:notes_app/components/dialog_box.dart';
import 'package:notes_app/components/notes_list.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 8),
          child: Column(
            children: [
              CustomAppBar(
                title: 'Notes',
                icon: Icons.search,
              ),
              NotesList(),
            ],
          ),
        ),
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
    );
  }
}
