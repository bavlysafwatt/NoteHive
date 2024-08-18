import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_button.dart';
import 'package:notes_app/components/custom_text_field.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      contentPadding: EdgeInsets.zero,
      shadowColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        height: 500,
        width: 400,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add new note!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              CustomTextField(
                hintText: 'Title',
                maxLines: 1,
              ),
              SizedBox(height: 10),
              CustomTextField(
                hintText: 'Content',
                maxLines: 7,
              ),
              SizedBox(height: 10),
              CustomButton(text: 'Add'),
            ],
          ),
        ),
      ),
    );
  }
}
