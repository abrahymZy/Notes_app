import 'package:flutter/material.dart';
import 'package:notes_app/widget/custem_app_bar.dart';
import 'package:notes_app/widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [CustemAppBar(), SizedBox(height: 10), NotesViewBody()],
        ),
      ),
    );
  }
}
