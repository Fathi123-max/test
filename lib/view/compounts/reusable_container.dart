import 'package:flutter/material.dart';

// create a class for reuable container has parameters like  color and text chid  and background image border radius
class ReusableContainer extends StatelessWidget {
  final Color color;
  final String text;
  final String image;
  final double radius;
  final Widget child;

  const ReusableContainer(
      {Key? key,
      required this.color,
      required this.text,
      required this.image,
      required this.radius,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        image: DecorationImage(image: NetworkImage(image)),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: child,
    );
  }
}
