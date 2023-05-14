import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_recommended_item_card.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_recommended_item_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewRecommended extends StatefulWidget {
  const HomeViewRecommended({super.key});

  @override
  State<HomeViewRecommended> createState() => _HomeViewRecommendedState();
}

class _HomeViewRecommendedState extends State<HomeViewRecommended>
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
    return Container(
      height: 190,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 32),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Recommended",
              style: Styles.textStyle16,
            ),
          ),
          const SizedBox(height: 23),
          Expanded(
              child: AnimatedBuilder(
            animation: animationController,
            builder: (context, child) => Opacity(
              opacity: opacityAnimation.value,
              child: SlideTransition(
                position: offsetAnimation,
                child: child,
              ),
            ),
            child: listWidget(),
          )),
        ],
      ),
    );
  }

  Widget listWidget() {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: recommended.length,
      itemBuilder: (context, index) {
        return SizedBox(
          width: 250,
          child: HomeViewRecommendedItemCard(
            imgUrl: recommended[index][1],
            price: recommended[index][2],
            subTitle: "",
            title: recommended[index][0],
          ),
        );
      },
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
