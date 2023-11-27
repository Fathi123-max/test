import 'package:flutter/material.dart';
import 'package:test/view/compounts/tab_view.dart';
import 'package:vertical_tabs_flutter/vertical_tabs.dart';

class CustomVerticalTabs extends StatelessWidget {
  CustomVerticalTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return VerticalTabs(
      indicatorSide: IndicatorSide.start,
      tabsWidth: 150,
      tabBackgroundColor: Colors.grey,
      indicatorColor: Colors.grey,
      backgroundColor: Colors.white,
      tabs: <Tab>[
        const Tab(
          text: "Boy",
        ),
      ],
      contents: <Widget>[TabviewPage()],
    );
  }
}
