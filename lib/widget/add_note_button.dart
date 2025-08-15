import 'package:flutter/material.dart';
import 'package:notes_app/views/add_note_bottom_sheet.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (context) {
            return AddNoteBottomSheet();
          },
        );
      },
      backgroundColor: Colors.lightBlueAccent,
      child: Icon(Icons.add, color: Colors.black),
    );
  }
}
