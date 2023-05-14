import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_explore_categories_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeViewExploreCategories extends StatefulWidget {
  const HomeViewExploreCategories({
    super.key,
  });

  @override
  State<HomeViewExploreCategories> createState() =>
      _HomeViewExploreCategoriesState();
}

class _HomeViewExploreCategoriesState extends State<HomeViewExploreCategories>
    with SingleTickerProviderStateMixin {
  //Animations
  late AnimationController animationController;
  late Animation<double> opacityAnimation;
  late Animation<Offset> offsetAnimation;

  @override
  void initState() {
    super.initState();

    opacityAnimationFunc();
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.width;
    //
    return Container(
      height: deviceHeight * 0.45,
      padding: const EdgeInsets.only(
        top: 30,
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(
              left: 31,
            ),
            child: const Text(
              "Explore Categories",
              style: Styles.textStyle16,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.05,
          ),
          SizedBox(
              height: deviceHeight * 0.22,
              child: AnimatedBuilder(
                animation: animationController,
                builder: (context, child) => Opacity(
                  opacity: opacityAnimation.value,
                  child: SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  ),
                ),
                child: HomeViewExploreCategoriesListView(
                  deviceHeight: deviceHeight,
                ),
              )),
        ],
      ),
    );
  }

  void opacityAnimationFunc() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    opacityAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    offsetAnimation =
        Tween<Offset>(begin: const Offset(0.35, 0), end: const Offset(0, 0))
            .animate(CurvedAnimation(
                parent: animationController, curve: Curves.easeOut));

    animationController.forward();
  }
}
