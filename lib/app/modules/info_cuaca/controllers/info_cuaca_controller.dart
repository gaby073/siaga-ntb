import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class InfoCuacaController extends GetxController {
  //TODO: Implement InfoCuacaController
  final cuacaController = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith(
              'https://bmkg.go.id/cuaca/prakiraan-cuaca.bmkg?Kota=Mataram&AreaID=501421&Prov=35')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(
      Uri.parse(
          'https://bmkg.go.id/cuaca/prakiraan-cuaca.bmkg?Kota=Mataram&AreaID=501421&Prov=35'),
    ).obs;

  //"https://bmkg.go.id/cuaca/prakiraan-cuaca.bmkg?Kota=Mataram&AreaID=501421&Prov=35"
  final count = 0.obs;
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
}
