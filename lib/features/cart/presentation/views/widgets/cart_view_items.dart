import 'package:delivery/constains.dart';
import 'package:delivery/core/utils/assets.dart';
import 'package:delivery/core/utils/styles.dart';
import 'package:delivery/core/utils/widgets/mybutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartViewBoughtItems extends StatelessWidget {
  final int ind;
  const CartViewBoughtItems({super.key, required this.ind});

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth * 0.55,
      height: deviceHeight * 0.40,
      margin: EdgeInsets.only(
        top: deviceHeight * 0.05,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            child: Container(
              height: deviceHeight * 0.35,
              width: deviceWidth * 0.5,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  25,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 30,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    Container(
                      width: deviceHeight * 0.2,
                      height: deviceWidth * 0.2,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        categories[ind][1],
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.01,
                    ),
                    Text(
                      categories[ind][0],
                      style: Styles.textStyle22,
                    ),
                    SizedBox(
                      height: deviceHeight * 0.01,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 30,
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi, atque eaque eius esse et harum inventore ipsam  nam necessitatibus nemo pariatur provident.",
                        maxLines: 3,
                        style: Styles.textStyle10,
                      ),
                    ),
                    SizedBox(
                      height: deviceHeight * 0.03,
                    ),
                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: Flex(
                            direction: Axis.horizontal,
                            children: [
                              Flexible(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.grey,
                                  ),
                                  child: const Icon(
                                    FontAwesomeIcons.minus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: const Text(
                                    "1",
                                    style: Styles.textStyle22,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Container(
                                  padding: EdgeInsets.all(5),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: kPrimaryColor,
                                  ),
                                  child: const Icon(
                                    FontAwesomeIcons.plus,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: deviceWidth * 0.02,
                        ),
                        Flexible(
                          child: Text(
                            "\$19.9",
                            style: Styles.textStyle22,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            top: 0,
            right: 0,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: kLoveColor,
              child: Icon(
                Icons.delete,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
