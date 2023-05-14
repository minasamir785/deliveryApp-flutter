import 'package:flutter/material.dart';

class CustomColoredCard extends StatelessWidget {
  const CustomColoredCard({
    super.key,
    required this.color,
    required this.size,
    required this.child,
  });
  final Color color;
  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(size / 6),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          (size / 3.5),
        ),
      ),
      child: child,
    );
  }
}
