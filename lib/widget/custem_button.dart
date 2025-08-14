import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustemButton extends StatelessWidget {
  const CustemButton({super.key, this.onTap, this.isLoadin = false});
  final void Function()? onTap;
  final bool isLoadin;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoadin
              ? const CircularProgressIndicator(color: Colors.black)
              : const Text(
                  "Add",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
        ),
      ),
    );
  }
}
