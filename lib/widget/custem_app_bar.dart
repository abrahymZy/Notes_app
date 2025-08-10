import 'package:flutter/material.dart';
import 'package:notes_app/widget/custem_icon.dart';

class CustemAppBar extends StatelessWidget {
  const CustemAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontSize: 28)),
        CustemIcon(icon: icon,),
      ],
    );
  }
}
