import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  final Color color;
  const NoteItem({super.key, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(0),
            textColor: Colors.black,
            title: Text("Flutter Tips", style: TextStyle(fontSize: 26)),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "Bulid your career with ebrahym ezzy",
                style: TextStyle(
                  color: Colors.black.withAlpha(128),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.trash, color: Colors.black, size: 20),
            ),
          ),
          Text(
            "May,2026",
            style: TextStyle(color: Colors.black.withAlpha(160), fontSize: 16),
          ),
        ],
      ),
    );
  }
}
