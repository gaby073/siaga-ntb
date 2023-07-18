import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../berita/views/berita_view.dart';
import '../../nomor_penting/views/nomor_penting_view.dart';
import '../views/home_view.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  //create for bottom navigation bar
  final selectedIndex = 0.obs;

  final screens = [
    HomeView(),
    BeritaView(),
    NomorPentingView(),
  ].obs;
  //cretate function to launch url
  launchURL() async {
    print('object');
    final Uri url = Uri.parse(
        'https://bmkg.go.id/cuaca/prakiraan-cuaca.bmkg?Kota=Mataram&AreaID=501421&Prov=35');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  launchLaporURL() async {
    print('object');
    final Uri url = Uri.parse('https://dev.sik.ntbprov.go.id/lapor-bencana');
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
