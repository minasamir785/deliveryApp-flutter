import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/cart/presentation/views/cart_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CartViewCustomBottomTabs extends StatelessWidget {
  const CartViewCustomBottomTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            color: Colors.grey.withOpacity(00.1),
          ),
        ],
      ),
      margin: const EdgeInsets.only(bottom: 10),
      height: 50,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: const Icon(
                    FontAwesomeIcons.house,
                    color: kShadowBluetColor,
                  ),
                ),
                Icon(
                  FontAwesomeIcons.store,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          Flexible(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 75,
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(100)),
                ),
                InkWell(
                  onTap: () {},
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: kPrimaryColor,
                    child: SvgPicture.asset(
                      Assets.cartSvg,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.grey,
                ),
                Icon(
                  FontAwesomeIcons.user,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
