import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:test/model/photo_model.dart';
import 'package:test/view/compounts/reusable_container.dart';

class TabviewPage extends StatelessWidget {
  List<PhotoModel> photos;
  TabviewPage({super.key, required this.photos});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: [
        ReusableContainer(
          height: 150.h,
          width: 200.w,
          image: photos.first.url,
          radius: 1.r,
          padding: 10.h,
        ),
        // gridview.builder for ReusableContainer
        SizedBox(
          height: 88.w,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(10.h),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.2.h,
              crossAxisSpacing: 7.h,
              mainAxisSpacing: 7.h,
            ),
            itemCount: 6,
            itemBuilder: (context, index) => ReusableContainer(
              color: Colors.white,
              radius: 10.r,
              text: "hello",
              border: 1,
            ),
          ),
        ),

        SizedBox(
          height: 45.w,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.all(10.h),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.2.h,
              crossAxisSpacing: 7.h,
              mainAxisSpacing: 7.h,
            ),
            itemCount: 3,
            itemBuilder: (context, index) => ReusableContainer(
              color: Colors.red,
              radius: 10.r,
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
          image: photos[2].url,
          radius: 1.r,
          padding: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(10.h),
              child: Text(
                "Hello Banner",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Obx(
          () => SizedBox(
            height: 150.h,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.all(10.h),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: .5.h,
                mainAxisExtent: 65,
                crossAxisSpacing: 5.h,
                mainAxisSpacing: 5.h,
              ),
              itemCount: photos.length,
              itemBuilder: (context, index) => ReusableContainer(
                color: Colors.amber,
                radius: 10.r,
                border: 1,
                image: photos[index].url,
              ),
            ),
          ),
        )
      ]),
    );
  }
}
