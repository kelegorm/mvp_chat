import 'package:flutter/material.dart';

class AppBarHeader extends StatelessWidget {
  final String label;

  const AppBarHeader({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}
