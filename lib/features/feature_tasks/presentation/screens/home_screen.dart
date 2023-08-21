import 'package:flutter/material.dart';
import 'package:pelaicons/pelaicons.dart';
import 'package:task_cut_app/core/constants/color_constants/global_color.dart';
import 'package:task_cut_app/core/constants/text_constants/fa/fa_text.dart';
import 'package:task_cut_app/core/widgets/custom_badge.dart';
import 'package:task_cut_app/core/widgets/large_text.dart';
import 'package:task_cut_app/core/widgets/main_container.dart';
import 'package:task_cut_app/core/widgets/middle_text.dart';
import 'package:task_cut_app/core/widgets/small_text.dart';
import 'package:task_cut_app/features/feature_tasks/presentation/widgets/category_cart.dart';
import 'package:task_cut_app/features/feature_tasks/presentation/widgets/profile_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainContainer(
      body: CustomScrollView(
        slivers: <Widget>[
          const Header(),
          const SearchBox(),
          const CategoriesSlider(),
          SliverPadding(
            padding: const EdgeInsets.only(top: 32),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
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
                  );
                },
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 132,
                mainAxisSpacing: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CategoriesSlider extends StatelessWidget {
  const CategoriesSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: <Widget>[
          const Row(
            children: <Widget>[
              MiddleText(text: 'دسته بندی'),
            ],
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 183,
            child: ListView.builder(
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const CategoryCart();
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
        vertical: 32,
      ),
      sliver: SliverToBoxAdapter(
          child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: GlobalColor.textGrey,
              blurRadius: 5,
              spreadRadius: 0.5,
              offset: Offset(0, 3),
            ),
          ],
          border: Border.all(color: GlobalColor.deepGreen),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Pelaicons.search_light_outline,
              ),
            ),
            const SizedBox(width: 2),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'جستجو در تسکات...'),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ProfileContainer(
            child: Image.asset(
              'assets/images/man.png',
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  LargeText(text: FaWord.hello),
                  LargeText(text: '، '),
                  LargeText(
                    text: 'مهدی',
                    color: GlobalColor.deepGreen,
                  ),
                  LargeText(text: '👋'),
                ],
              ),
              SmallText(
                text: '2 شهریور',
                color: GlobalColor.textGrey,
              ),
            ],
          ),
          const Spacer(),
          const SizedBox(
            height: 26,
            child: CustomBadge(
              child: SmallText(
                text: '20 ${FaWord.activeTask}',
                color: GlobalColor.deepGreen,
              ),
            ),
          )
        ],
      ),
    );
  }
}
