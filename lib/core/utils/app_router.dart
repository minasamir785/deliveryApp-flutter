import 'package:delivery/constains.dart';
import 'package:delivery/features/cart/presentation/views/cart_view.dart';
import 'package:delivery/features/home/presentation/views/home_view.dart';
import 'package:delivery/features/product/presentation/views/product_view.dart';
import 'package:delivery/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: SplashView.route,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: HomeView.route,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
        pageBuilder: (context, state) => CustomTransitionPage(
          key: state.pageKey,
          child: const HomeView(),
          transitionDuration: kTranstionDuration,
          transitionsBuilder: customFadingTranstion,
        ),
      ),
      GoRoute(
        path: ProductView.route,
        builder: (BuildContext context, GoRouterState state) {
          return ProductView(
            imgUrl: state.extra as String,
          );
        },
      ),
      GoRoute(
        path: CartView.route,
        builder: (BuildContext context, GoRouterState state) {
          return const CartView();
        },
      ),
    ],
  );
}

Widget customSlidingTranstion(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  const begin = Offset(0.0, 0.25);
  const end = Offset.zero;
  const curve = Curves.easeIn;

  var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

  return SlideTransition(
    position: animation.drive(tween),
    child: child,
  );
}

Widget customFadingTranstion(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  return FadeTransition(
    opacity: animation,
    child: child,
  );
}
