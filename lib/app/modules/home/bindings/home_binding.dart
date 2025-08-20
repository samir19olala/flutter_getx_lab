import 'package:flutter_getx_lab/app/modules/home/controllers/home_screen_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<HomeScreenController>(
      () => HomeScreenController(),
    );
  }
}
