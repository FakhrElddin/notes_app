import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/helper/show_snack_bar.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_list_view.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_note_colors_list_view.dart';


class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 16.0),
      child:  Column(
        children: [
          const SizedBox(
            height: 8,
          ),
          CustomAppBar(
            title: 'Edit Notes',
            icon: Icons.check,
            onPressed: (){
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.content = content ?? widget.noteModel.content;
              widget.noteModel.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
              showSnackBar(context, 'update note done');
            },
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
              hintText: widget.noteModel.title,
              onChanged: (value){
                title = value;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
              hintText: widget.noteModel.content,
              maxLines: 5,
              onChanged: (value){
                content = value;
              },
          ),
          const SizedBox(
            height: 16,
          ),
          EditNoteColorsList(
            noteModel: widget.noteModel,
          ),
        ],
      ),
    );
  }
}





