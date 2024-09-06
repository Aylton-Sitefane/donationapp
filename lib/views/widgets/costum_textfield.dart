import 'package:flutter/material.dart';

class CoustumTextField extends StatelessWidget {
  final String? hint;
  final String label;
  final double? width;
  final double? height;
  const CoustumTextField({super.key, required this.hint, required this.label, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          hintText: hint,
        ),
      ),
    );
  }
}
