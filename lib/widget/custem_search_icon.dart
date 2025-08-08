import 'package:flutter/material.dart';

class CustemSearchIcon extends StatelessWidget {
  const CustemSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withAlpha(35),
      ),
      child: Icon(Icons.search),
    );
  }
}
