import 'package:get/get.dart';

import '../controller/thirdPageController.dart';
import '../pages/fourth_page.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';

class MyRoute {
  static const String initial = "/";
  static const String thirdPage = "/thirdPage";
  static const String fourthPage = "/fourthPage";

  static String getSecondPage() {
    return "${initial}";
  }

  static String getThirdPage() => "${thirdPage}";
  static String getFourthPage() => "${fourthPage}";

  static List<GetPage> route = [
    GetPage(name: initial, page: () => SecondPage()),
    GetPage(
      name: thirdPage,
      page: () => ThirdPage(),
    ),
    GetPage(name: fourthPage, page: () => FourthPage()),
  ];
}
