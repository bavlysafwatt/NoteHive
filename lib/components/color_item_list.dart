import 'package:flutter/material.dart';
import 'package:notes_app/components/color_item.dart';

class ColorItemList extends StatefulWidget {
  const ColorItemList({super.key});

  @override
  State<ColorItemList> createState() => _ColorItemListState();
}

class _ColorItemListState extends State<ColorItemList> {
  final List<int> colorList = const [
    0xffFF1053,
    0xff70C1B3,
    0xff66C7F4,
    0xffC1CAD6,
    0xffFFFFFF,
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: colorList.asMap().entries.map((entry) {
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
