import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test/view/compounts/reusable_container.dart';

class TabviewPage extends StatelessWidget {
  const TabviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        ReusableContainer(
          height: 150.h,
          width: 200.w,
          color: Colors.red,
          radius: 1,
        ),
        // gridview.builder for ReusableContainer
        SizedBox(
          height: 110.h,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(23),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 6,
            itemBuilder: (context, index) => const ReusableContainer(
              color: Colors.white,
              radius: 10,
              text: "hello",
              border: 1,
            ),
          ),
        ),
        SizedBox(
          height: 60.h,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(23),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: 3,
            itemBuilder: (context, index) => const ReusableContainer(
              color: Colors.red,
              radius: 10,
              text: "Welcome",
            ),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),

        ReusableContainer(
          height: 100.h,
          width: 200.w,
          color: Colors.red,
          radius: 1,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
              child: Text(
                "Hello Banner",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
