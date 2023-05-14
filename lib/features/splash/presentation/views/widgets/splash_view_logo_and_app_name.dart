import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SplashViewLogoAndAppName extends StatelessWidget {
  const SplashViewLogoAndAppName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.cartSvg,
          colorFilter: const ColorFilter.mode(kPrimaryColor, BlendMode.srcIn),
          // color: kPrimaryColor,
          height: 75,
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Delivery App",
          style: Styles.textStyle30,
        )
      ],
    );
  }
}
