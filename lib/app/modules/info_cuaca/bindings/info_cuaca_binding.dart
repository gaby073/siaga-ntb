import 'package:get/get.dart';

import '../controllers/info_cuaca_controller.dart';

class InfoCuacaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoCuacaController>(
      () => InfoCuacaController(),
    );
  }
}
