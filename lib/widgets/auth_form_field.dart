import 'package:flutter/material.dart';

class AuthFormField extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final String hint;

  const AuthFormField({
    required this.hint,
    this.padding = EdgeInsets.zero,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          fillColor: const Color(0xFF31393C),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13), // скругление, как на скрине
            borderSide: BorderSide.none, // без внешней рамки
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
        ),
      ),
    );
  }
}
