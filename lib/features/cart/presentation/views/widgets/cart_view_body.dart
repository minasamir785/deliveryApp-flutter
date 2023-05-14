import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:delivery/core/utils/widgets/mybutton.dart';
import 'package:delivery/features/cart/presentation/views/widgets/cart_view_address.dart';
import 'package:delivery/features/cart/presentation/views/widgets/cart_view_app_bar.dart';
import 'package:delivery/features/cart/presentation/views/widgets/cart_view_custom_bottom_tabs.dart';
import 'package:delivery/features/cart/presentation/views/widgets/cart_view_items.dart';
import 'package:delivery/features/cart/presentation/views/widgets/cart_view_items_list.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_custom_bottom_tabs.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CartViewAppBar(),
        CartViewAddress(),
        CartViewItemsList(),
        CartViewTotalCost(),
        Spacer(),
        CartViewCustomBottomTabs()
      ],
    );
  }
}

class CartViewTotalCost extends StatelessWidget {
  const CartViewTotalCost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth * 0.8,
      height: deviceHeight * 0.2,
      decoration: BoxDecoration(color: Colors.grey.withOpacity(0.1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                Text(
                  "Sub Total Cost",
                  style: Styles.textStyle14,
                ),
                Spacer(),
                Text(
                  "\$10",
                  style: Styles.textStyle14,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                Text(
                  "Quantity",
                  style: Styles.textStyle14,
                ),
                Spacer(),
                Text(
                  "5",
                  style: Styles.textStyle14,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: const [
                Text(
                  "Total Cost",
                  style: Styles.textStyle22,
                ),
                Spacer(),
                Text(
                  "\$50",
                  style: Styles.textStyle22,
                ),
              ],
            ),
          ),
          Container(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              width: double.infinity,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(
                  colors: [
                    kPrimaryColor,
                    kGradientColor,
                  ],
                ),
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, deviceHeight * 0.08),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: () {},
                child: Text(
                  "Submit",
                  style: Styles.textStyle22.copyWith(color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
