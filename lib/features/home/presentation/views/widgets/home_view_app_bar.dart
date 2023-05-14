import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:delivery/features/home/presentation/views/widgets/home_view_app_bar_search_field.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewAppBar extends StatelessWidget {
  const HomeViewAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.width;
    //
    return Material(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 10,
            ),
          ],
        ),
        height: 0.25 * deviceHeight,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
        child: Row(
          children: [
            HomeViewCustomAppBarSearchField(
                deviceHeight: deviceHeight, deviceWidth: deviceWidth),
            SizedBox(
              width: deviceWidth * 0.05,
            ),
            const Text(
              "Home",
              style: Styles.textStyle22,
            ),
            SizedBox(
              width: deviceWidth * 0.2,
            ),
            const Icon(
              FontAwesomeIcons.bell,
              color: kLightBluetColor,
            ),
            SizedBox(
              width: deviceWidth * 0.05,
            ),
            const Icon(
              FontAwesomeIcons.divide,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
