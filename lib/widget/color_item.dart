import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: color,
              child: Icon(Icons.check, size: 30, color: Colors.white),
            ),
          )
        : CircleAvatar(radius: 38, backgroundColor: color);
  }
}
