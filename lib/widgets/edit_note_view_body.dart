import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';


class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16.0),
      child:  Column(
        children: [
          SizedBox(
            height: 8,
          ),
          CustomAppBar(
            title: 'Edit Notes',
            icon: Icons.check,
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextField(hintText: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
              hintText: 'Content',
              maxLines: 5,
          ),
        ],
      ),
    );
  }
}
