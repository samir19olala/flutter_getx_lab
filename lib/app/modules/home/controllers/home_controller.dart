import 'package:flutter/material.dart';
import 'package:flutter_getx_lab/app/modules/home/views/screens/home_screen.dart';
import 'package:flutter_getx_lab/app/modules/home/views/screens/profile_screen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  final RxInt currentPage = 0.obs;
  final List<Widget> destination = const [
    HomeScreen(),
    ProfileScreen(),
  ];

  void changePage(int page){
    currentPage(page);
  }

}
