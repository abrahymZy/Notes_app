import 'package:flutter/material.dart';
import 'package:notes_app/views/add_note_bottom_sheet.dart';
import 'package:notes_app/widget/add_note_button.dart';
import 'package:notes_app/widget/custem_app_bar.dart';
import 'package:notes_app/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static final id = "NotesView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 60),
            CustemAppBar(title: "Notes", icon: Icons.search),
            Expanded(child: NotesViewBody()),
          ],
        ),
      ),
      floatingActionButton: AddNoteButton(),
    );
  }
}
