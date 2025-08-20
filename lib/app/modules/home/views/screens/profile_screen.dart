import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ProfileScreen extends GetView {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("profile"),
      ),
    );
  }
}