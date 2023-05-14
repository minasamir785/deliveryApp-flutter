import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewCustomAppBarSearchField extends StatelessWidget {
  const HomeViewCustomAppBarSearchField({
    super.key,
    required this.deviceHeight,
    required this.deviceWidth,
  });
  final double deviceHeight;
  final double deviceWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 0.3 * deviceWidth,
          child: const TextField(
            decoration: InputDecoration(
                hintText: "Search",
                hintStyle: Styles.textStyle10,
                prefixIcon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: kPrimaryColor,
                  size: 18,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: kLightColor, width: 0.25),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: kLightColor, width: 0.25),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(color: kLightColor, width: 0.25),
                )),
          ),
        )
      ],
    );
  }
}
