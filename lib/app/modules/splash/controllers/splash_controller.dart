import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void endScreen() {
    Future.delayed(Duration(seconds: 4), () {
      Get.offNamed('/home-nav');
    });
  }
}
