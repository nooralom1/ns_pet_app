import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ns_pet_app/controller/splash_controller.dart';
import 'package:ns_pet_app/gen/assets.gen.dart';

final class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset(
          Assets.images.poster.path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
