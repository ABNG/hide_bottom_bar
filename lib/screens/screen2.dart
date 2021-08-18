import 'package:flutter/material.dart';
import 'package:scroll_bottom_navigation_bar/scroll_bottom_navigation_bar.dart';
import 'package:scroll_bottom_navigation_bar_example/controller_class.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
          onTap: () {
            MyController.controller.bottomNavigationBar.setTab(0);
          },
          child: Text("Screen2")),
    );
  }
}
