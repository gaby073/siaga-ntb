import 'package:get/get.dart';

import '../controllers/edukasi_bencana_controller.dart';

class EdukasiBencanaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EdukasiBencanaController>(
      () => EdukasiBencanaController(),
    );
  }
}
