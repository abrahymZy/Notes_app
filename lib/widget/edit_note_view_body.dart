import 'package:flutter/material.dart';
import 'package:notes_app/widget/custem_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Column(
        children: [
          SizedBox(height: 60),
          CustemAppBar(title: "Edit Note", icon: Icons.check),
        ],
      ),
    );
  }
}
