import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustemTextField extends StatelessWidget {
  const CustemTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1,
    this.heightHintText = 1,
    this.onSaved,
    this.hasBorder = true,
    this.onChanged,
    this.value,
  });
  final String hintText;
  final int maxLines;
  final double heightHintText;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  final bool hasBorder;
  final String? value;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      initialValue: value,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "يجب إدخال $hintText ";
        } else {
          return null;
        }
      },
      textAlignVertical: TextAlignVertical.top,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: kPrimaryColor, height: heightHintText),
        border: hasBorder ? buildBorder(kPrimaryColor) : null,
        enabledBorder: hasBorder ? buildBorder(kPrimaryColor) : null,
        focusedBorder: hasBorder ? buildBorder(kPrimaryColor) : null,
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
