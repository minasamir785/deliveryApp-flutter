import 'package:delivery/core/utils/assets.dart';
import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xff5117AC);
const Color kDarkPrimaryColor = Color(0xff153E73);
const Color kLightColor = Color.fromARGB(255, 166, 174, 178);
const Color kLightBluetColor = Color(0xff20D0C4);
const Color kShadowBluetColor = Color(0xff209BD0);
const Color kPopularProuductsNameColor = Color(0xFF515F65);
const Color kLoveColor = Color(0xFFF1395E);
const Color kGradientColor = Color(0xFFF2CD5C4);

const Duration kTranstionDuration = Duration(milliseconds: 750);

// Categories
//List [Name , SVG Location , Color]
final List categories = [
  [
    "Tacos",
    "assets/images/tacos.svg",
    const Color(0xffD0E6A5).withOpacity(0.47),
  ],
  [
    "Fries",
    "assets/images/fries.svg",
    const Color(0xff86E3CE).withOpacity(0.47),
  ],
  [
    "Burger",
    "assets/images/burger.svg",
    const Color(0xffFFDD95).withOpacity(0.47),
  ],
  [
    "Pizza",
    "assets/images/pizza.svg",
    const Color(0xffFFACAC).withOpacity(0.47),
  ],
  [
    //assets\images\burrito.svg
    "Burritos",
    "assets/images/burrito.svg",
    const Color(0xffCCAAD9).withOpacity(0.47),
  ],
];

///
///Popular Products
final List products = [
  ["Pizza", "assets/images/pizza.png", "12.95"],
  ["Fries", "assets/images/fries.png", "9.99"],
  ["Burger", "assets/images/burger.png", "2.5"],
];

///
///Popular Products
final List recommended = [
  ["Juice", "assets/images/juice.png", "12.95"],
  ["MilkShakes", "assets/images/juice_2.png", "9.99"],
];

///
///ingradients
final List ingradients = [
  ["Bread", Assets.breadIngradient],
  ["Bruger", Assets.brugerIngradient],
  ["Onion", Assets.onionsIngradient],
  ["Lechuga", Assets.lechugaIngradient],
];
