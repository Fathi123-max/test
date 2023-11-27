import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.r),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(30.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'What are you looking for?',
            hintStyle: TextStyle(color: Colors.grey, fontSize: 15.sp),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(30.r),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.all(8.w),
              child: Icon(
                Icons.search,
                color: Colors.blue,
                size: 20.w,
              ),
            ),
            contentPadding: EdgeInsets.zero, // Adjust content padding
          ),
        ),
      ),
    );
  }
}
