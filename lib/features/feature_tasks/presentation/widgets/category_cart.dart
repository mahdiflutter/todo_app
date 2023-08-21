import 'package:flutter/material.dart';
import 'package:task_cut_app/core/constants/color_constants/global_color.dart';
import 'package:task_cut_app/core/widgets/large_text.dart';

class CategoryCart extends StatelessWidget {
  const CategoryCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        top: 10,
        bottom: 10,
        right: 10,
      ),
      width: 130,
      decoration: BoxDecoration(
        color: GlobalColor.deepGreen,
        boxShadow: const <BoxShadow>[
          BoxShadow(
            blurRadius: 7,
            color: GlobalColor.deepGreen,
            spreadRadius: 0,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Icon(
            Icons.sports_basketball_sharp,
            color: Colors.white,
            size: 70,
          ),
          Container(
            width: double.infinity,
            height: 30,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Center(
              child: LargeText(
                text: 'ورزش',
              ),
            ),
          )
        ],
      ),
    );
  }
}
