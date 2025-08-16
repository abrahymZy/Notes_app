import 'package:flutter/material.dart';
import 'package:notes_app/widget/custem_icon.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        CustemIcon(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
