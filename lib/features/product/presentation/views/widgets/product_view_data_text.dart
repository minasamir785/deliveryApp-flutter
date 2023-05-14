import 'package:delivery/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ProductViewDataText extends StatelessWidget {
  const ProductViewDataText({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: deviceHeight * (170 / 900),
      margin: EdgeInsets.only(
        top: deviceHeight * 0.075,
      ),
      padding: EdgeInsets.only(
        left: deviceWidth * 0.1,
        right: deviceWidth * 0.15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Descripción",
              style: Styles.textStyle22,
            ),
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
          const Text(
            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur",
            style: Styles.textStyle12,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: deviceHeight * 0.01,
          ),
        ],
      ),
    );
  }
}
