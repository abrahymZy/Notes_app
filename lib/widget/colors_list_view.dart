import 'package:flutter/material.dart';
import 'package:notes_app/widget/color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40*2,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ColorItem();
        },
      ),
    );
  }
}
