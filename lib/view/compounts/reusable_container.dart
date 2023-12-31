import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  final double? padding;

  const ReusableContainer(
      {this.height,
      this.width,
      this.padding,
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding ?? 0),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(
              color: Colors.grey,
              style: border == null ? BorderStyle.none : BorderStyle.solid,
              width: border ?? 0),
          image: DecorationImage(
            image: NetworkImage(image ?? ""),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(radius ?? 30.r),
        ),
        child: text != null
            ? Center(
                child: Text(
                  text ?? "test",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 10.sp),
                ),
              )
            : child,
      ),
    );
  }
}
