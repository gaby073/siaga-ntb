import 'package:get/get.dart';

import '../controllers/lapor_bencana_controller.dart';

class LaporBencanaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LaporBencanaController>(
      () => LaporBencanaController(),
    );
  }
}
