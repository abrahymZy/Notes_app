import 'package:flutter/material.dart';
import 'package:notes_app/widget/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  final colors = const [Color(0xffEAEB99), Color(0xffFFD07D), Colors.lightBlue];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: NoteItem(color: colors[index % 3]),
          );
        },
      ),
    );
  }
}
