import 'package:delivery/constains.dart';
import 'package:delivery/features/cart/presentation/views/widgets/cart_view_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CartViewItemsList extends StatelessWidget {
  const CartViewItemsList({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight * 0.45,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CartViewBoughtItems(ind: index);
        },
      ),
    );
  }
}
