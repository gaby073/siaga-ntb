import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siaga_ntb/constant.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/lokasi_penting_controller.dart';

class LokasiPentingView extends GetView<LokasiPentingController> {
  const LokasiPentingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConstants.OrangeCo,
        title: Text(
          'Peta Lokasi Penting',
          style: MediumHeadingStyle1,
        ),
      ),
      // backgroundColor: ColorConstants.OrangeCo,
      body: WebViewWidget(controller: controller.lokasiController),
    );
  }
}
