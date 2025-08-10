import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustemTextField extends StatelessWidget {
  const CustemTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.heightHintText = 1,
  });
  final String hintText;
  final int maxLines;
  final double heightHintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlignVertical: TextAlignVertical.top,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor, height: heightHintText),
        border: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(kPrimaryColor),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
