import 'package:flutter/material.dart';

// create a class for reuable container has parameters like  color and text chid  and background image border radius
class ReusableContainer extends StatelessWidget {
  final Color? color;
  final String? text;
  final String? image;
  final double? radius;
  final Widget? child;
  final double? width;
  final double? height;
  final double? border;
  const ReusableContainer(
      {this.height,
      this.width,
      this.border,
      Key? key,
      this.color,
      this.text,
      this.image,
      this.radius,
      this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
            color: Colors.grey,
            style: border == null ? BorderStyle.none : BorderStyle.solid,
            width: border ?? 0),
        image: DecorationImage(
            image: NetworkImage(image ?? ""), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(radius ?? 30),
      ),
      child: text != null
          ? Center(
              child: Text(
                text ?? "test",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            )
          : child,
    );
  }
}
