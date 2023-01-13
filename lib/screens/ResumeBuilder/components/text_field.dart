import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({
    Key? key,
    required this.text,
    required this.placeholder,
    this.type = TextInputType.text,
    this.maxLines = 1
  }) : super(key: key);
  final TextEditingController text;
  final String placeholder;
  final TextInputType type;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: text,
      keyboardType: type,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: placeholder,
        filled: true,
        fillColor: const Color(0xFFF8F8F9),
        hintStyle: const TextStyle(
          color: Color(0xFFB8B5C3),
        ),
        border: defaultOutlineInputBorder,
        enabledBorder: defaultOutlineInputBorder,
        focusedBorder: defaultOutlineInputBorder,
      ),
    );
  }
}

const OutlineInputBorder defaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide.none,
  borderRadius: BorderRadius.all(Radius.circular(12)),
);
