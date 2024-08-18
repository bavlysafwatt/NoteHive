import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_app_bar.dart';
import 'package:notes_app/components/note_item.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.0,
            vertical: 8,
          ),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 10),
              NoteItem(),
            ],
          ),
        ),
      ),
    );
  }
}
