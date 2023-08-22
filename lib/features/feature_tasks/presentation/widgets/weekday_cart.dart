import 'package:flutter/material.dart';
import 'package:task_cut_app/core/constants/color_constants/global_color.dart';
import 'package:task_cut_app/core/widgets/large_text.dart';

class WeekdayCart extends StatelessWidget {
  final bool isActive;
  final int numberOfDay;
  const WeekdayCart({
    super.key,
    required this.isActive,
    required this.numberOfDay,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 71,
      margin: const EdgeInsets.only(left: 10, bottom: 10, top: 10, right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: isActive ? GlobalColor.deepGreen : GlobalColor.lightGreen,
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 7,
            spreadRadius: 0.5,
            blurStyle: BlurStyle.normal,
            color: isActive ? GlobalColor.deepGreen : GlobalColor.background,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          const SizedBox(height: 15),
          LargeText(
            text: 'شنبه',
            color: isActive ? Colors.white : GlobalColor.deepGreen,
          ),
          const SizedBox(height: 10),
          LargeText(
            text: numberOfDay.toString(),
            color: isActive ? Colors.white : GlobalColor.deepGreen,
          ),
        ],
      ),
    );
  }
}
