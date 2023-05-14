import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_popluar_products_image_and_heart.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_popular_products_name_and_price.dart';
import 'package:delivery/features/product/presentation/views/product_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PopularFoodCard extends StatelessWidget {
  final String imgUrl;
  final String price;
  final String name;
  const PopularFoodCard({
    super.key,
    required this.imgUrl,
    required this.price,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(ProductView.route, extra: imgUrl);
      },
      child: Container(
        alignment: Alignment.center,
        height: 214,
        width: 174,
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
            Hero(
              tag: imgUrl,
              child: HomeViewPopluarProductsImageAndHeart(
                imgUrl: imgUrl,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            HomeViewPopularProductsNameAndPrice(
              name: name,
              price: price,
            ),
          ],
        ),
      ),
    );
  }
}
