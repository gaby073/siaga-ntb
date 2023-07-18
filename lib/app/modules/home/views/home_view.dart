import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:siaga_ntb/app/routes/app_pages.dart';
import 'package:siaga_ntb/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../controllers/home_controller.dart';
import '../models/list_model_home.dart';
import '../widgets/custom_widgets.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            //COLUMN UTAMA
            child: Stack(
              children: [
                //insert image from assets
                Image.asset(
                  'assets/bghome.png',
                  width: Get.width,
                  fit: BoxFit.fill,
                ),

                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18, horizontal: 24),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              //ROW HEADER
                              Header(),
                              SizedBox(height: 24),
                              //ROW WEATHER
                              Weather(),
                              SizedBox(height: 32),
                              //ROW BUTTON
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  //COLUMN BUTTON 1
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(Routes.EDUKASI_BENCANA);
                                    },
                                    child: IconHome('assets/icons_3/info.png',
                                        'Edukasi\nBencana'),
                                  ),
                                  //COLUMN BUTTON 2
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(Routes.GALERI);
                                    },
                                    child: IconHome(
                                        'assets/icons_3/gallery.png',
                                        'Galeri\n'),
                                  ),
                                  //COLUMN BUTTON 3
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(Routes.INFO_CUACA);
                                    },
                                    child: IconHome(
                                        'assets/icons_3/weather.png',
                                        'Info\nCuaca'),
                                  ),
                                  //COLUMN BUTTON 4
                                  InkWell(
                                    onTap: () {
                                      Get.toNamed(Routes.LOKASI_PENTING);
                                    },
                                    child: IconHome(
                                        'assets/icons_3/location.png',
                                        'Info Lokasi\nPenting'),
                                  ),
                                ],
                              ),
                              SizedBox(height: 28),
                              Info(
                                  "Info Bencana", "Lihat Info Bencana Terbaru"),
                              // SizedBox(height: 8),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //INFO BENCANA
                    InfoBencana(),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, right: 24, top: 24, bottom: 20),
                        child: Info(
                            "Berita Bencana", "Lihat Berita Bencana Terbaru")),

                    //BERITA BENCANA
                    BeritaBencana()
                  ],
                ),
              ],
            ),
          ),
        ),

        //Create floating button
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Get.toNamed(Routes.LAPOR_BENCANA);
          },
          icon: ImageIcon(AssetImage('assets/icons_3/danger.png')),
          label: Text(
            'Lapor Bencana',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: ColorConstants.WhiteCo,
            ),
          ),
          backgroundColor: ColorConstants.OrangeCo,
        ),
      ),
    );
  }
}
