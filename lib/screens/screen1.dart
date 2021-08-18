import 'package:flutter/material.dart';

import '../controller_class.dart';

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: MyController.controller,
      itemCount: 50,
      itemBuilder: (context, index) => Container(
        margin: const EdgeInsets.only(bottom: 5),
        height: 50,
        color: Colors.blue,
        child: Center(child: Text(index.toString())),
      ),
    );
  }
}
