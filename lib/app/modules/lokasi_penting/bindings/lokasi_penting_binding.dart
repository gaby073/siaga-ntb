import 'package:get/get.dart';

import '../controllers/lokasi_penting_controller.dart';

class LokasiPentingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LokasiPentingController>(
      () => LokasiPentingController(),
    );
  }
}
