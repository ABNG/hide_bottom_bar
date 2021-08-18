import 'package:flutter/material.dart';
import 'package:scroll_bottom_navigation_bar/scroll_bottom_navigation_bar.dart';
import 'package:scroll_bottom_navigation_bar_example/controller_class.dart';
import 'package:scroll_bottom_navigation_bar_example/screens/screen1.dart';
import 'package:scroll_bottom_navigation_bar_example/screens/screen2.dart';

import '../controller_class.dart';

class BasicPage extends StatelessWidget {
  const BasicPage({Key? key}) : super(key: key);

  static const _items = <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Page 1",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Page 2",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    MyController.controller = ScrollController();

    return Scaffold(
      appBar: AppBar(title: const Text("Basic")),
      body: ValueListenableBuilder<int>(
        valueListenable:
            MyController.controller.bottomNavigationBar.tabNotifier,
        child: SizedBox(height: MediaQuery.of(context).size.height * 2),
        builder: (context, pageIndex, child) => changePage(pageIndex)!,
      ),
      bottomNavigationBar: ScrollBottomNavigationBar(
        controller: MyController.controller, // Controller is also here
        items: _items,
      ),
    );
  }

  Widget? changePage(int index) {
    switch (index) {
      case 0:
        return const Screen1();
      case 1:
        return const Screen2();
    }
  }
}
