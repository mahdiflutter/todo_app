import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign align;
  const SmallText({
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
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: color,
      ),
    );
  }
}
