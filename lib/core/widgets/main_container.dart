import 'package:flutter/material.dart';
import 'package:task_cut_app/core/constants/color_constants/global_color.dart';

class MainContainer extends StatelessWidget {
  final Widget body;
  const MainContainer({
    super.key,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: GlobalColor.background,
        body: SafeArea(
          child: body,
        ),
      ),
    );
  }
}
