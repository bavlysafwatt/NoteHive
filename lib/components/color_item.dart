import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key, required this.colorValue, required this.isActive});

  final int colorValue;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Color(colorValue),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
          )
        : Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: Color(colorValue),
              borderRadius: BorderRadius.circular(16),
            ),
          );
  }
}
