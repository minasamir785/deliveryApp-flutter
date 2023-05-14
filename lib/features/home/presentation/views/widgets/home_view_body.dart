import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_app_bar_search_field.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_custom_bottom_tabs.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_explore_categories.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_popular_products.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_recommended.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            const HomeViewAppBar(),
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: const [
                  HomeViewExploreCategories(),
                  HomeViewPopularProducts(),
                  HomeViewRecommended()
                ],
              ),
            ),
          ],
        ),
        const HomeViewCustomBottomTabs(),
      ],
    );
  }
}
