import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewRecommendedItemData extends StatelessWidget {
  final String title;
  final String subTitle;
  final String price;

  const HomeViewRecommendedItemData({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 15, right: 15),
      height: 100,
      width: 240,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              blurRadius: 30,
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
            )
          ]),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "Naturales",
                style: Styles.textStyle14
                    .copyWith(color: kDarkPrimaryColor)
                    .copyWith(fontWeight: FontWeight.w100),
              ),
              const SizedBox(width: 30),
              const Icon(FontAwesomeIcons.heart),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  title,
                  style: Styles.textStyle14.copyWith(color: kDarkPrimaryColor),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    subTitle,
                    style: Styles.textStyle7,
                  ),
                ),
                Text(
                  "\$$price ",
                  style: Styles.textStyle14,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
