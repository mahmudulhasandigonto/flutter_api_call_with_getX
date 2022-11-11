import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice/controller/thirdPageController.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ThirdPageController());
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("ThirdPage"),
          centerTitle: true,
        ),
        body:GetBuilder<ThirdPageController>(builder: (_){
          return controller.isLoading?Center(
            child: CircularProgressIndicator(),
          ):ListView.builder(
            itemCount:controller.productList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.productList[index].name),
                leading: CircleAvatar(
                  foregroundImage: NetworkImage(controller.productList[index].imageLink),
                ),
              );
            },);
        },)

    ));
  }
}
