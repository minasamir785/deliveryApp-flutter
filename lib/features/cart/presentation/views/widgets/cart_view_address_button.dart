import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddressButton extends StatelessWidget {
  const AddressButton({
    super.key,
    required this.name,
    required this.fill,
  });

  final String name;
  final bool fill;

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(left: 30, top: 30),
      height: deviceHeight * 0.075,
      width: deviceWidth * 0.3,
      decoration: BoxDecoration(
        border: fill ? null : Border.all(color: kPrimaryColor, width: 1),
        color: fill ? kPrimaryColor : Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            FontAwesomeIcons.house,
            color: fill ? Colors.white : kPrimaryColor,
          ),
          Text(
            name,
            style: Styles.textStyle12
                .copyWith(color: fill ? Colors.white : kPrimaryColor),
          )
        ],
      ),
    );
  }
}
