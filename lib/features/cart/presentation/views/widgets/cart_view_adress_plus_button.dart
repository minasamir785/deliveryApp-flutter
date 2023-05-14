import 'package:delivery/constains.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddressPlusButton extends StatelessWidget {
  const AddressPlusButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(top: 25, left: 20),
      width: deviceHeight * 0.06,
      height: deviceHeight * 0.06,
      decoration:
          const BoxDecoration(color: kPrimaryColor, shape: BoxShape.circle),
      child: const Icon(
        FontAwesomeIcons.plus,
        color: Colors.white,
      ),
    );
  }
}
