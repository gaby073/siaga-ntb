import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class NomorPentingController extends GetxController {
  //TODO: Implement NomorPentingController

  launchNomorURL() async {
    print('object');
    final Uri url = Uri.parse(
        'https://dev.sik.ntbprov.go.id/nomor-penting?category=Instansi%20Kebencanaan');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

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
