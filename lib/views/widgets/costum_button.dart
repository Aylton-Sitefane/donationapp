import 'package:flutter/material.dart';

class CostumButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final double? height;
  final double? width;
  final double? radious;
  final Color? color;
  const CostumButton({super.key, required this.title, required this.onPressed, this.height, this.width, this.radious, this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed:onPressed,
    style: ElevatedButton.styleFrom(
      minimumSize: Size.fromHeight(height ?? 60),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radious ?? 16)
      )
    ),
      child: Text(title, style: TextStyle(color: color ?? Colors.white),),
    );
  }
}