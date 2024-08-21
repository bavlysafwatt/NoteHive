import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/components/custom_text_field.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({super.key, this.onPressed});

  final void Function()? onPressed;
  final TextEditingController search = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: Row(
        children: [
          Expanded(
            child: CustomTextField(
              hintText: 'Search',
              maxLines: 1,
              controller: search,
              onChanged: (value) {
                BlocProvider.of<NotesCubit>(context).readAllNotes(value: value);
              },
            ),
          ),
          const SizedBox(width: 10),
          Container(
            height: 65,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade900,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: IconButton(
                icon: Icon(
                  Icons.cancel,
                  size: 25,
                  color: Colors.grey.shade500,
                ),
                onPressed: onPressed,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
