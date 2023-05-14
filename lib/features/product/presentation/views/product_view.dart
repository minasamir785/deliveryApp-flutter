import 'package:delivery/features/product/presentation/views/widgets/product_view_app_bar.dart';
import 'package:delivery/features/product/presentation/views/widgets/product_view_body.dart';
import 'package:flutter/material.dart';

class ProductView extends StatelessWidget {
  final String imgUrl;
  static const route = "/ProductView";
  const ProductView({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: ProductViewBody(imgUrl: imgUrl),
      ),
    );
  }
}
