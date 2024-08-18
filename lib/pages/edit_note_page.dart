import 'package:flutter/material.dart';
import 'package:notes_app/components/custom_app_bar.dart';
import 'package:notes_app/components/custom_text_field.dart';

class EditNotePage extends StatelessWidget {
  const EditNotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
          child: ListView(
            children: const [
              CustomAppBar(
                title: 'Edit Note',
                icon: Icons.done,
              ),
              SizedBox(height: 15),
              CustomTextField(
                hintText: 'Title',
                maxLines: 1,
              ),
              SizedBox(height: 15),
              CustomTextField(
                hintText: 'Content',
                maxLines: 23,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
