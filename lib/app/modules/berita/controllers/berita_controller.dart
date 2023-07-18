import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/model_news.dart';
import '../../../data/news_api.dart';

class BeritaController extends GetxController {
  launchURL() async {
    print('object');
    final Uri url =
        Uri.parse('https://dev.sik.ntbprov.go.id/info-kebencanaan/berita');
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
