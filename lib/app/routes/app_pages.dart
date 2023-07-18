import 'package:get/get.dart';

import '../modules/berita/bindings/berita_binding.dart';
import '../modules/berita/views/berita_view.dart';
import '../modules/detail_berita/bindings/detail_berita_binding.dart';
import '../modules/detail_berita/views/detail_berita_view.dart';
import '../modules/edukasi_bencana/bindings/edukasi_bencana_binding.dart';
import '../modules/edukasi_bencana/views/edukasi_bencana_view.dart';
import '../modules/galeri/bindings/galeri_binding.dart';
import '../modules/galeri/views/galeri_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_nav.dart';
import '../modules/home/views/home_view.dart';
import '../modules/info_cuaca/bindings/info_cuaca_binding.dart';
import '../modules/info_cuaca/views/info_cuaca_view.dart';
import '../modules/lapor_bencana/bindings/lapor_bencana_binding.dart';
import '../modules/lapor_bencana/views/lapor_bencana_view.dart';
import '../modules/lokasi_penting/bindings/lokasi_penting_binding.dart';
import '../modules/lokasi_penting/views/lokasi_penting_view.dart';
import '../modules/nomor_penting/bindings/nomor_penting_binding.dart';
import '../modules/nomor_penting/views/nomor_penting_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.HOMENAV,
      page: () => HomeNav(),
    ),
    GetPage(
      name: _Paths.BERITA,
      page: () => BeritaView(),
      binding: BeritaBinding(),
    ),
    GetPage(
      name: _Paths.EDUKASI_BENCANA,
      page: () => const EdukasiBencanaView(),
      binding: EdukasiBencanaBinding(),
    ),
    GetPage(
      name: _Paths.NOMOR_PENTING,
      page: () => const NomorPentingView(),
      binding: NomorPentingBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_BERITA,
      page: () => const DetailBeritaView(),
      binding: DetailBeritaBinding(),
    ),
    GetPage(
      name: _Paths.LAPOR_BENCANA,
      page: () => const LaporBencanaView(),
      binding: LaporBencanaBinding(),
    ),
    GetPage(
      name: _Paths.INFO_CUACA,
      page: () => const InfoCuacaView(),
      binding: InfoCuacaBinding(),
    ),
    GetPage(
      name: _Paths.LOKASI_PENTING,
      page: () => const LokasiPentingView(),
      binding: LokasiPentingBinding(),
    ),
    GetPage(
      name: _Paths.GALERI,
      page: () => const GaleriView(),
      binding: GaleriBinding(),
    ),
  ];
}
