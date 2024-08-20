import 'package:flutter/material.dart';
import 'package:notes_app/components/color_item.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = kColorList.indexOf(widget.noteModel.color);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: kColorList.asMap().entries.map((entry) {
        int index = entry.key;
        int colorValue = entry.value;
        return GestureDetector(
          onTap: () {
            widget.noteModel.color = kColorList[index];
            setState(() {
              currentIndex = index;
            });
          },
          child: ColorItem(
            colorValue: colorValue,
            isActive: currentIndex == index,
          ),
        );
      }).toList(),
    );
  }
}
