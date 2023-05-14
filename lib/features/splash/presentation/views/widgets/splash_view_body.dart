import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:delivery/features/home/presentation/views/home_view.dart';
import 'package:delivery/features/splash/presentation/views/widgets/splash_view_logo_and_app_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
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
    navToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      child: const SplashViewLogoAndAppName(),
      builder: (context, child) {
        return Opacity(
          opacity: scaleAndOpacityAnimation.value,
          child: ScaleTransition(
            scale: scaleAndOpacityAnimation,
            child: Center(
              child: child!,
            ),
          ),
        );
      },
    );
  }

  void animateLogo() {
    animationController = AnimationController(
        vsync: this,
        duration: const Duration(
          milliseconds: 1500,
        ));

    scaleAndOpacityAnimation = Tween<double>(begin: 0.5, end: 1).animate(
        CurvedAnimation(
            curve: Curves.bounceInOut, parent: animationController));
    animationController.forward();
  }

  void navToHomeView() {
    Future.delayed(const Duration(seconds: 2)).then((value) {
      GoRouter.of(context).pushReplacement(HomeView.route);
    });
  }
}
