import 'package:flutter/material.dart';

/// Big blue button, tries to get all width (excepts paddings).
class BigBlueButton extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final VoidCallback onPressed;
  final String label;

  const BigBlueButton({
    required this.onPressed,
    required this.label,
    this.padding = EdgeInsets.zero,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: onPressed,
          style: FilledButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 23, 143, 230),
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 13),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13),
            ),
          ),
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 17
            ),
          ),
        ),
      ),
    );
  }
}
