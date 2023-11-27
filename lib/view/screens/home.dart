import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:test/view/compounts/bottom_navgation_bar.dart';
import 'package:test/view/compounts/searchbar.dart';
import 'package:test/view/compounts/vertical_tabs.dart';

class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const CustomBottomNavigationBar(),
        body: Column(
          children: [
            SizedBox(
              height: 50.h,
              child: CustomSearchBar(key: key),
            ),
            Expanded(
              child: SizedBox(
                  height: Get.height * .815, child: CustomVerticalTabs()),
            ),
          ],
        ),
      ),
    );
  }
}
