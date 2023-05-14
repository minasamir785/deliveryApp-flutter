import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewPopularProductsNameAndPrice extends StatelessWidget {
  final String name;
  final String price;

  const HomeViewPopularProductsNameAndPrice({
    super.key,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 27),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.normal,
              color: kPopularProuductsNameColor,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 5),
            child: Text(
              "Classic house sauce",
              style: Styles.textStyle7,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "\$$price ",
            style: Styles.textStyle14,
          ),
        ],
      ),
    );
  }
}
