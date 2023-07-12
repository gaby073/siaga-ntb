import 'package:get/get.dart';
import 'package:siaga_ntb/routes/route_name.dart';

import '../pages/berita.dart';
import '../pages/detail_berita.dart';
import '../pages/edukasi_bencana.dart';
import '../pages/home.dart';
import '../pages/nomor_penting.dart';
import '../pages/peta_lokasi.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: RouteName.HomeScreen,
      page: () => Home(),
    ),
    GetPage(
      name: RouteName.BeritaScreen,
      page: () => Berita(),
    ),
    GetPage(
      name: RouteName.NomorPentingScreen,
      page: () => NomorPenting(),
    ),
    GetPage(
      name: RouteName.EdukasiBencanaScreen,
      page: () => EdukasiBencana(),
    ),
    GetPage(
      name: RouteName.DetailBeritaScreen,
      page: () => DetailBerita(),
    ),
    GetPage(
      name: RouteName.PetaLokasiScreen,
      page: () => PetaLokasi(),
    ),
  ];
}
