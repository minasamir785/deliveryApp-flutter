import 'dart:async';
import 'dart:developer';

import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_explore_categories_custom_colored_card.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';

class HomeViewExploreCategoriesListView extends StatefulWidget {
  final double deviceHeight;

  const HomeViewExploreCategoriesListView(
      {super.key, required this.deviceHeight});

  @override
  State<HomeViewExploreCategoriesListView> createState() =>
      _HomeViewExploreCategoriesListViewState();
}

class _HomeViewExploreCategoriesListViewState
    extends State<HomeViewExploreCategoriesListView> {
  //Varible declartion

  //ScrollController
  final ScrollController scrollController = ScrollController();
  //Timer
  late Timer timer;

  @override
  void initState() {
    super.initState();
    timer = createPeriodicScollController(scrollController);
  }

  @override
  void dispose() {
    scrollController.dispose();
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      controller: scrollController,
      itemCount: categories.length,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 25),
          child: AspectRatio(
            aspectRatio: 1,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Flexible(
                  flex: 2,
                  child: CustomColoredCard(
                    color: categories[index][2],
                    size: widget.deviceHeight * 0.18,
                    child: SvgPicture.asset(
                      categories[index][1],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    categories[index][0],
                    style: Styles.textStyle12,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Timer createPeriodicScollController(ScrollController scrollController) {
    Timer timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (scrollController.hasClients) {
        double maxScrollExtent = scrollController.position.maxScrollExtent;
        double currentOffset = scrollController.offset;
        double newOffset =
            currentOffset + (0.18 * (0.75) * MediaQuery.of(context).size.width);
        if (newOffset >= maxScrollExtent) {
          newOffset = 0.0;
        }
        scrollController.animateTo(
          newOffset,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
    return timer;
  }
}
