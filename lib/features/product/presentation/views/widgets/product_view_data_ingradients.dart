import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductViewDataIngradients extends StatelessWidget {
  const ProductViewDataIngradients({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: deviceHeight * (200 / 900),
      width: deviceWidth,
      child: Flex(
        direction: Axis.vertical,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: deviceWidth * 0.11,
            ),
            child: const Text(
              "Ingredientes",
              style: Styles.textStyle22,
            ),
          ),
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: ingradients.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: deviceHeight * (140 / 900),
                      width: deviceWidth * 0.30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(ingradients[index][1]),
                            fit: BoxFit.fill),
                      ),
                    ),
                    Text(
                      ingradients[index][0],
                      style: Styles.textStyle10,
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
