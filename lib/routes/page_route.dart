import 'package:get/get.dart';
import 'package:siaga_ntb/routes/route_name.dart';

import '../pages/berita.dart';
import '../pages/home.dart';
import '../pages/nomor_penting.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: RouteName.HomeScreen,
      page: () => const Home(),
    ),
    GetPage(
      name: RouteName.BeritaScreen,
      page: () => const Berita(),
    ),
    GetPage(
      name: RouteName.NomorPentingScreen,
      page: () => const NomorPenting(),
    ),
  ];
}
