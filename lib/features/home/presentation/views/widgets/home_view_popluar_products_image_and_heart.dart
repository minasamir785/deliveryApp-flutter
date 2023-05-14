import 'package:delivery/constains.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewPopluarProductsImageAndHeart extends StatelessWidget {
  final String imgUrl;

  const HomeViewPopluarProductsImageAndHeart({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            margin: const EdgeInsets.only(top: 38),
            padding: const EdgeInsets.all(15),
            alignment: Alignment.center,
            height: 90,
            decoration: BoxDecoration(
              image: DecorationImage(
                scale: 1.05,
                image: AssetImage(
                  imgUrl,
                ),
              ),
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  color: kShadowBluetColor.withOpacity(0.35),
                  spreadRadius: 10,
                )
              ],
            ),
          ),
        ),
        const Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(
              top: 15,
              right: 15,
            ),
            child: Icon(
              FontAwesomeIcons.heart,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
