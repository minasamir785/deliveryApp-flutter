import 'package:delivery/features/home/presentation/views/widgets/home_view_recommended_item_data.dart';
import 'package:flutter/material.dart';

class HomeViewRecommendedItemCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String price;
  final String imgUrl;
  const HomeViewRecommendedItemCard({
    super.key,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        HomeViewRecommendedItemData(
            price: price, subTitle: subTitle, title: title),
        Container(
          margin: const EdgeInsets.only(left: 10, top: 10),
          height: 120,
          width: 90,
          decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.fill, image: AssetImage(imgUrl))),
        ),
      ],
    );
  }
}
