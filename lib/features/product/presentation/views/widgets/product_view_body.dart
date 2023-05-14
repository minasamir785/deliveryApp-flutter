import 'package:delivery/constains.dart';
import 'package:delivery/features/product/presentation/views/widgets/product_view_app_bar.dart';
import 'package:delivery/features/product/presentation/views/widgets/product_view_body_heart_icon.dart';
import 'package:delivery/features/product/presentation/views/widgets/product_view_data.dart';
import 'package:delivery/features/product/presentation/views/widgets/product_view_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductViewBody extends StatelessWidget {
  final String imgUrl;
  const ProductViewBody({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ProductViewImage(imgUrl: imgUrl),
        const ProductViewAppBar(),
        const ProductViewData(),
        const ProductViewBodyHeartIcon()
      ],
    );
  }
}
