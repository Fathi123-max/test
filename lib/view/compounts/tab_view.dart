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
          radius: 1,
          padding: 20,
        ),
        // gridview.builder for ReusableContainer
        SizedBox(
          height: 110.h,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(23),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.6,
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
              childAspectRatio: 1.6,
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
          image: photos[2].url,
          radius: 1,
          padding: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
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
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: .5,
                mainAxisExtent: 65,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
              ),
              itemCount: photos.length,
              itemBuilder: (context, index) => ReusableContainer(
                color: Colors.amber,
                radius: 10,
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
