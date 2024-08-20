import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/components/custom_app_bar.dart';
import 'package:notes_app/components/custom_text_field.dart';
import 'package:notes_app/components/edit_note_colors_list.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/helper.dart';
import 'package:notes_app/models/note_model.dart';

class EditNotePage extends StatefulWidget {
  const EditNotePage({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late TextEditingController title;
  late TextEditingController content;

  @override
  void initState() {
    super.initState();
    title = TextEditingController(text: widget.noteModel.title);
    content = TextEditingController(text: widget.noteModel.content);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          autovalidateMode: autovalidateMode,
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: ListView(
              children: [
                CustomAppBar(
                  title: 'Edit Note',
                  icon: Icons.done,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      widget.noteModel.title = title.text;
                      widget.noteModel.content = content.text;
                      widget.noteModel.save();
                      BlocProvider.of<NotesCubit>(context).readAllNotes();
                      Navigator.pop(context);
                      showSnackBar(context, 'Note edited successfully');
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  hintText: 'Title',
                  maxLines: 1,
                  controller: title,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  hintText: 'Content',
                  maxLines: 21,
                  controller: content,
                ),
                const SizedBox(height: 20),
                EditNoteColorsList(noteModel: widget.noteModel),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
