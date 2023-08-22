import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task_cut_app/core/constants/color_constants/global_color.dart';
import 'package:task_cut_app/core/constants/text_constants/fa/fa_text.dart';
import 'package:task_cut_app/core/widgets/large_text.dart';
import 'package:task_cut_app/core/widgets/main_container.dart';
import 'package:task_cut_app/core/widgets/middle_text.dart';
import 'package:task_cut_app/features/feature_tasks/presentation/widgets/small_button.dart';

class TimerScreen extends StatelessWidget {
  const TimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainContainer(
      body: CustomScrollView(
        slivers: <Widget>[
          Header(),
          TimerIndecator(),
          SliverPadding(
            padding: EdgeInsets.only(right: 24),
            sliver: SliverToBoxAdapter(
              child: LargeText(
                text: FaWord.saveTimer,
                color: GlobalColor.textGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TimerIndecator extends StatelessWidget {
  const TimerIndecator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 40,
      ),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: <Widget>[
            CircularPercentIndicator(
              radius: 120,
              circularStrokeCap: CircularStrokeCap.butt,
              lineWidth: 15,
              percent: 0.1,
              progressColor: GlobalColor.deepGreen,
              arcBackgroundColor: GlobalColor.lightGreen,
              arcType: ArcType.FULL,
              animation: true,
              center: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  LargeText(text: FaWord.stop),
                  SizedBox(height: 20),
                  LargeText(text: '22:13'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: <Widget>[
                const Spacer(),
                SmallButton(
                  clicked: () {},
                  text: FaWord.finish,
                  isDeep: false,
                ),
                const SizedBox(width: 20),
                SmallButton(
                  clicked: () {},
                  text: FaWord.continuation,
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 25,
      ),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: <Widget>[
            LargeText(
              text: 'مشاهده آموزش',
              color: GlobalColor.deepGreen,
            ),
            SizedBox(width: 15),
            MiddleText(
              text: '25:00',
              color: GlobalColor.textGrey,
            ),
            Spacer(),
            MiddleText(
              text: 'درحال اجرا',
              color: GlobalColor.textGrey,
            ),
          ],
        ),
      ),
    );
  }
}
