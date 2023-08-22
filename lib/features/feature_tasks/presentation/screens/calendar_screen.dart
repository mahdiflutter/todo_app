import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task_cut_app/core/constants/color_constants/global_color.dart';
import 'package:task_cut_app/core/constants/text_constants/fa/fa_text.dart';
import 'package:task_cut_app/core/widgets/large_text.dart';
import 'package:task_cut_app/core/widgets/main_container.dart';
import 'package:task_cut_app/core/widgets/small_text.dart';
import 'package:task_cut_app/features/feature_tasks/presentation/widgets/task_cart.dart';
import 'package:task_cut_app/features/feature_tasks/presentation/widgets/weekday_cart.dart';

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainContainer(
      body: CustomScrollView(
        slivers: [
          Header(),
          WeekdaysList(),
          TasksList(),
          DoneHeader(),
          TasksList(),
        ],
      ),
    );
  }
}

class DoneHeader extends StatelessWidget {
  const DoneHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      sliver: SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: GlobalColor.textGrey,
              width: 2,
            ),
          ),
          child: const Center(child: SmallText(text: FaWord.doneTasks)),
        ),
      ),
    );
  }
}

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 30,
      ),
      sliver: SliverGrid.builder(
        itemCount: 3,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisExtent: 132,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return const TaskCart(done: true);
        },
      ),
    );
  }
}

class WeekdaysList extends StatelessWidget {
  const WeekdaysList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsetsDirectional.only(start: 24),
      sliver: SliverToBoxAdapter(
        child: SizedBox(
          height: 107,
          child: ListView.builder(
            itemCount: 31,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return WeekdayCart(
                isActive: index == 0 ? true : false,
                numberOfDay: ++index,
              );
            },
          ),
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
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 25,
      ),
      sliver: SliverToBoxAdapter(
        child: Row(
          children: <Widget>[
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                LargeText(text: '2 شهریور'),
                SizedBox(height: 15),
                SmallText(
                  text: '10 ${FaWord.todayActiveTasks}',
                  color: GlobalColor.textGrey,
                )
              ],
            ),
            const Spacer(),
            CircularPercentIndicator(
              radius: 40,
              percent: 0.50,
              progressColor: GlobalColor.deepGreen,
              center: const LargeText(text: '%50'),
              arcBackgroundColor: GlobalColor.lightGreen,
              arcType: ArcType.FULL,
              restartAnimation: true,
            )
          ],
        ),
      ),
    );
  }
}
