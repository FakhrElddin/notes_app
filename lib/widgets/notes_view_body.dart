import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(
          horizontal: 16.0,
      ),
      child:  Column(
        children: [
          SizedBox(
            height: 8,
          ),
          CustomAppBar(),
          SizedBox(
            height: 16,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}





