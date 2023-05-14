import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CartViewAppBar extends StatelessWidget {
  const CartViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.width;
    //
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        height: 0.25 * deviceHeight,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        child: Row(
          children: [
            const Text(
              "Cart",
              style: Styles.textStyle22,
            ),
            SizedBox(
              width: deviceWidth * 0.2,
            ),
          ],
        ),
      ),
    );
  }
}
