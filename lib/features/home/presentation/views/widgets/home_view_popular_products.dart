import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_popular_product_card.dart';
import 'package:flutter/material.dart';

class HomeViewPopularProducts extends StatefulWidget {
  const HomeViewPopularProducts({super.key});

  @override
  State<HomeViewPopularProducts> createState() =>
      _HomeViewPopularProductsState();
}

class _HomeViewPopularProductsState extends State<HomeViewPopularProducts>
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
      height: 270,
      margin: const EdgeInsets.only(top: 15),
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 32),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Popular Products",
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
            ),
          )
        ],
      ),
    );
  }

  Widget listWidget() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(left: 15),
        child: PopularFoodCard(
          imgUrl: products[index][1],
          name: products[index][0],
          price: products[index][2],
        ),
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
