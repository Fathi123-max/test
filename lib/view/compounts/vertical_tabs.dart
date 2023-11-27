import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test/controller/photos_controller.dart';
import 'package:test/controller/user_controllers.dart';
import 'package:test/view/compounts/tab_view.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

class CustomVerticalTabs extends StatelessWidget {
  CustomVerticalTabs({Key? key});

  final userController = Get.find<UserController>();
  final photosController = Get.find<PhotoController>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18.h),
      child: Obx(
        () => userController.isLoading.value || photosController.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : VerticalTabs(
                indicatorSide: IndicatorSide.start,
                tabsWidth: 150.w,
                contentScrollAxis: Axis.horizontal,
                tabsShadowColor: Colors.white,
                tabBackgroundColor: Colors.white,
                // selectedTabBackgroundColor: Colors.white,
                indicatorColor: Colors.grey,
                backgroundColor: Colors.white,
                tabs: <Tab>[
                  for (int i = 0; i < userController.users.length; i++)
                    Tab(
                      text: userController.users[i].name,
                      height: 25.h,
                    ),
                ],
                contents: <Widget>[
                  for (int i = 0; i < 10; i++)
                    TabviewPage(
                      photos: photosController.photos,
                    )
                ],
              ),
      ),
    );
  }
}
