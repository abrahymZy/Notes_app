import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widget/custem_app_bar.dart';
import 'package:notes_app/widget/custem_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 60),
            CustemAppBar(
              title: "Edit Note",
              icon: Icons.check,
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = subTitle ?? widget.note.subTitle;
                widget.note.save();

                BlocProvider.of<NotesCubit>(context).fetchAllNotes();

                Navigator.pop(context);
              },
            ),
            SizedBox(height: 50),
            CustemTextField(
              value: widget.note.title,
              hintText: "Title",
              hasBorder: false,
              onChanged: (value) {
                title = value;
              },
            ),
            SizedBox(height: 16),
            CustemTextField(
              value: widget.note.subTitle,
              hintText: "Contant",
              maxLines: 25,
              hasBorder: false,
              onChanged: (value) {
                subTitle = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
