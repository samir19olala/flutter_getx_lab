import 'package:get/get.dart';

import '../controllers/animation_v1_controller.dart';

class AnimationV1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimationV1Controller>(
      () => AnimationV1Controller(),
    );
  }
}
