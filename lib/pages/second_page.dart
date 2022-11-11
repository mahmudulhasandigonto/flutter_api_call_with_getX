import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../route_helper/my_route.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text('SecondPage'),
          centerTitle: true,
        ),

        body: Center(
          child: FloatingActionButton(
            onPressed: () {
              Get.toNamed(MyRoute.thirdPage);
            },
          ),
        ),
      ),
    );

  }
}
