import 'package:flutter/material.dart';

class MiddleText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign align;
  const MiddleText({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.align = TextAlign.right,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: color,
      ),
    );
  }
}
