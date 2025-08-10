import 'package:flutter/material.dart';
import 'package:notes_app/widget/custem_button.dart';
import 'package:notes_app/widget/custem_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 16),
            CustemTextField(hintText: "Title"),
            SizedBox(height: 20),
            CustemTextField(hintText: "Content", maxLines: 5),
            SizedBox(height: 100),
            CustemButton(),
          ],
        ),
      ),
    );
  }
}
