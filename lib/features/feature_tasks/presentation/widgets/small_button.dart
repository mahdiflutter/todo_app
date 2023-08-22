import 'package:flutter/material.dart';
import 'package:task_cut_app/core/constants/color_constants/global_color.dart';
import 'package:task_cut_app/core/constants/text_constants/fa/fa_text.dart';
import 'package:task_cut_app/core/widgets/middle_text.dart';

class SmallButton extends StatelessWidget {
  final bool isDeep;
  final String text;
  final Function clicked;
  const SmallButton({
    super.key,
    required this.clicked,
    required this.text,
    this.isDeep = true,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        clicked();
      },
      child: Container(
        width: 107,
        height: 36,
        decoration: BoxDecoration(
          color: isDeep ? GlobalColor.deepGreen : GlobalColor.lightGreen,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: MiddleText(
            text: text,
            color: isDeep ? Colors.white : GlobalColor.deepGreen,
          ),
        ),
      ),
    );
  }
}
