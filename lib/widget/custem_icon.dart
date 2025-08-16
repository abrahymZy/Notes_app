import 'package:flutter/material.dart';

class CustemIcon extends StatelessWidget {
  const CustemIcon({super.key, required this.icon, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white.withAlpha(35),
        ),
        child: Icon(icon),
      ),
    );
  }
}
