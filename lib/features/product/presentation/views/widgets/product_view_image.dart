import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ProductViewImage extends StatelessWidget {
  final String imgUrl;
  const ProductViewImage({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    String usedImg = Assets.fries;
    if (imgUrl.contains("pi")) {
      usedImg = Assets.pizza;
    } else if (imgUrl.contains("bur")) {
      usedImg = Assets.brugerProduct;
    }
    //
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Hero(
      tag: imgUrl,
      child: Container(
        width: deviceWidth,
        height: deviceHeight * 0.5,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              usedImg,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
