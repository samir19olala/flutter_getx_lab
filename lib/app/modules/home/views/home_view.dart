import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(()=> controller.destination[controller.currentPage.value])
      ),
      bottomNavigationBar:Obx(
        () {
          return NavigationBar(
            selectedIndex: controller.currentPage.value,
            destinations: <NavigationDestination>[
              NavigationDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home_filled),
                label: "Accueil",
              ),
              NavigationDestination(
                icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person_rounded),
                label: "profile"
              ),
            ],
            onDestinationSelected: controller.changePage,
          );
        }
      ),
      
    );
  }
}
