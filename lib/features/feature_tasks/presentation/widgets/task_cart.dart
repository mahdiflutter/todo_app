import 'package:flutter/material.dart';
import 'package:task_cut_app/core/constants/color_constants/global_color.dart';
import 'package:task_cut_app/core/constants/text_constants/fa/fa_text.dart';
import 'package:task_cut_app/core/widgets/custom_badge.dart';
import 'package:task_cut_app/core/widgets/middle_text.dart';
import 'package:task_cut_app/core/widgets/small_text.dart';

class TaskCart extends StatelessWidget {
  final bool done;
  const TaskCart({
    super.key,
    required this.done,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            color: GlobalColor.textGrey,
            blurRadius: 5,
            spreadRadius: 0.5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          const TaskImage(),
          Expanded(
            flex: 4,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 15),
                HeaderTask(isDone: done),
                const SizedBox(height: 20),
                const FooterTask(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FooterTask extends StatelessWidget {
  const FooterTask({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        TimeBadge(),
        SizedBox(width: 15),
        EditButton(),
      ],
    );
  }
}

class EditButton extends StatelessWidget {
  const EditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBadge(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.edit_outlined,
            color: GlobalColor.deepGreen,
          ),
          SizedBox(width: 10),
          SmallText(
            text: FaWord.edit,
            color: GlobalColor.deepGreen,
          ),
        ],
      ),
    );
  }
}

class TimeBadge extends StatelessWidget {
  const TimeBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBadge(
      isDeepColor: true,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.timer_sharp,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          SmallText(
            text: '10:00',
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class HeaderTask extends StatelessWidget {
  final bool isDone;
  const HeaderTask({
    super.key,
    required this.isDone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MiddleText(text: 'آموزش فلاتر'),
              SizedBox(height: 10),
              SmallText(text: 'دیدن آموزش های ادیبی'),
            ],
          ),
          Checkbox(
            value: isDone,
            activeColor: GlobalColor.deepGreen,
            onChanged: (newValue) {},
          ),
        ],
      ),
    );
  }
}

class TaskImage extends StatelessWidget {
  const TaskImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Image.asset(
        'assets/images/task.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
