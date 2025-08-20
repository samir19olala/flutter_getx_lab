import 'package:get/get.dart';

import '../modules/animationV1/bindings/animation_v1_binding.dart';
import '../modules/animationV1/views/animation_v1_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/page_view/bindings/page_view_binding.dart';
import '../modules/page_view/views/page_view_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ANIMATION_V1,
      page: () => const AnimationV1View(),
      binding: AnimationV1Binding(),
    ),
    GetPage(
      name: _Paths.PAGE_VIEW,
      page: () => const PageViewView(),
      binding: PageViewBinding(),
    ),
  ];
}
