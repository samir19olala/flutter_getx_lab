import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/animation_v1_controller.dart';

class AnimationV1View extends GetView<AnimationV1Controller> {
  const AnimationV1View({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimationV1View'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AnimationV1View is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
