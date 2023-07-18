import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../constant.dart';
import '../controllers/info_cuaca_controller.dart';

class InfoCuacaView extends GetView<InfoCuacaController> {
  const InfoCuacaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(InfoCuacaController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.OrangeCo,
        title: Text('Info Cuaca'),
      ),
      // backgroundColor: ColorConstants.OrangeCo,
      body: WebViewWidget(controller: controller.cuacaController),
    );
  }
}
