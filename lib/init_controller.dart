import 'package:get/get.dart';

import 'controller/thirdPageController.dart';

class InitController implements Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => ThirdPageController(), fenix: true);
  }

}