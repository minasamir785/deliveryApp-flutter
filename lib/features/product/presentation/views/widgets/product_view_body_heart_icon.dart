import 'package:delivery/constains.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductViewBodyHeartIcon extends StatefulWidget {
  const ProductViewBodyHeartIcon({super.key});

  @override
  State<ProductViewBodyHeartIcon> createState() =>
      _ProductViewBodyHeartIconState();
}

class _ProductViewBodyHeartIconState extends State<ProductViewBodyHeartIcon>
    with SingleTickerProviderStateMixin {
  //Variables Declaration

  //Animations Controller
  late AnimationController animationController;

  late Animation<double> scaleAndOpacityAnimation;

  //
  @override
  void initState() {
    super.initState();
    animateLogo();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  //
  bool islove = true;

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, child) {
        return Positioned(
          top: deviceHeight * 0.27,
          right: deviceWidth * 0.1,
          child: CircleAvatar(
              radius: 30,
              backgroundColor: kLoveColor,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    if (islove) {
                      animationController.forward();
                    } else {
                      animationController.reverse();
                    }
                    islove = !islove;
                  });
                },
                icon: ScaleTransition(
                  scale: scaleAndOpacityAnimation,
                  child: Icon(
                    islove
                        ? FontAwesomeIcons.heart
                        : FontAwesomeIcons.heartCircleCheck,
                    color: Colors.white,
                  ),
                ),
              )),
        );
      },
    );
  }

  void animateLogo() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 1000,
        ));

    scaleAndOpacityAnimation = Tween<double>(begin: 0.75, end: 1).animate(
        CurvedAnimation(
            curve: Curves.bounceInOut, parent: animationController));
  }
}
