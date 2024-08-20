import 'package:flutter/material.dart';
import 'package:notes_app/components/color_item.dart';
import 'package:notes_app/constants.dart';

class EditNoteColorsList extends StatefulWidget {
  const EditNoteColorsList({super.key, required this.currentColor});

  final int currentColor;

  @override
  State<EditNoteColorsList> createState() => _EditNoteColorsListState();
}

class _EditNoteColorsListState extends State<EditNoteColorsList> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = kColorList.indexOf(widget.currentColor);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: kColorList.asMap().entries.map((entry) {
        int index = entry.key;
        int colorValue = entry.value;
        return GestureDetector(
          onTap: () {
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
