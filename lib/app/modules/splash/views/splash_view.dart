import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:siaga_ntb/constant.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    controller.endScreen();
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bgsplash.png"), fit: BoxFit.cover),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 256.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logosiaga3.png',
                  width: 200,
                  height: 220,
                ),
                Text(
                  'SIAGA NTB',
                  style: HeadingStyle1,
                ),
                const SizedBox(
                  height: 178,
                ),
                LoadingAnimationWidget.waveDots(
                  color: Color(0xFFffffff),
                  size: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
