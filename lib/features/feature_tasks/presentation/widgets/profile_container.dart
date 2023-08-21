import 'package:flutter/material.dart';
import 'package:task_cut_app/core/constants/color_constants/global_color.dart';

class ProfileContainer extends StatelessWidget {
  final Widget child;
  const ProfileContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56.0,
      height: 56.0,
      padding: const EdgeInsets.all(5),
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        color: GlobalColor.deepGreen,
      ),
      child: child,
    );
  }
}
