import 'package:flutter/material.dart';
import 'package:task_cut_app/core/constants/color_constants/global_color.dart';

class CustomBadge extends StatelessWidget {
  final Widget child;
  final bool isDeepColor;
  const CustomBadge({
    super.key,
    required this.child,
    this.isDeepColor = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: isDeepColor ? GlobalColor.deepGreen : GlobalColor.lightGreen,
        borderRadius: BorderRadius.circular(13),
      ),
      child: child,
    );
  }
}
