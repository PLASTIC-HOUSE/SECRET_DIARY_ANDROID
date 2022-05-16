import 'package:flutter/material.dart';

Widget FieldWidget({
  required TextEditingController controller,
  String? labelText,
  String? errorText,
  int? maxLines,
  Color fillColor = const Color(0xFFFEE3D9),
  Color borderColor = const Color(0xFFEE9E05),
  double radius = 10,
}) {
  return TextField(
    controller: controller,
    cursorColor: const Color(0xFF969696),
    maxLines: maxLines,
    decoration: InputDecoration(
      labelText: labelText,
      errorText: errorText,
      labelStyle: const TextStyle(color: Colors.black),
      fillColor: fillColor,
      filled: true,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(radius),
        borderSide: BorderSide(color: borderColor, width: 6),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: borderColor, width: 6),
        borderRadius: BorderRadius.circular(radius),
      ),
    ),
  );
}
