import 'package:flutter/material.dart';
import 'package:notes_app/components/note_item.dart';

class NotesList extends StatelessWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => const NoteItem(),
        ),
      ),
    );
  }
}
