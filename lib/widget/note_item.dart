import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditNoteView.id);
      },
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.all(0),
              textColor: Colors.black,
              title: Text(note.title, style: TextStyle(fontSize: 26)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withAlpha(128),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                padding: EdgeInsets.only(bottom: 32),
                onPressed: () {
                  note.delete();

                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
            Text(
              note.date,
              style: TextStyle(
                color: Colors.black.withAlpha(160),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
