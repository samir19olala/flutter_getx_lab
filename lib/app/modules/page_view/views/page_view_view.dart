import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/page_view_controller.dart';

class PageViewView extends GetView<PageViewController> {
  const PageViewView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PageViewView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PageViewView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
