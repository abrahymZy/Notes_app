import 'package:flutter/material.dart';
import 'package:notes_app/widget/custem_search_icon.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Notes", style: TextStyle(fontSize: 28)),
        CustemSearchIcon(),
      ],
    );
  }
}
