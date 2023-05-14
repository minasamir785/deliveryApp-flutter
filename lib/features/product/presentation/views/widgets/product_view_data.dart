import 'package:delivery/core/utils/styles.dart';
import 'package:delivery/core/utils/widgets/mybutton.dart';
import 'package:delivery/features/product/presentation/views/widgets/product_view_data_ingradients.dart';
import 'package:delivery/features/product/presentation/views/widgets/product_view_data_text.dart';
import 'package:flutter/material.dart';

class ProductViewData extends StatelessWidget {
  const ProductViewData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 0.65 * deviceHeight,
        width: deviceWidth,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(deviceWidth * 0.3),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ProductViewDataText(),
            const ProductViewDataIngradients(),
            const Spacer(),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    bottom: 30,
                    left: 37,
                  ),
                  width: deviceWidth * 0.5,
                  child: MyButton(
                    onPressed: () {},
                    child: Text(
                      "Order now",
                      style: Styles.textStyle22.copyWith(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(
                    right: 30,
                    bottom: 30,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "\$19.99",
                    style: Styles.textStyle30,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
