import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:siaga_ntb/widgets/custom_widgets.dart';

import '../constant.dart';
import '../routes/route_name.dart';
import 'berita.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
          child: Column(
            children: [
              head(),
              SizedBox(height: 24),
              CardCuaca(),
              SizedBox(height: 24),
              Container(
                width: double.infinity,
                color: ColorConstants.WhiteCo,
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconMenu('assets/icons_2/call.png',
                          RouteName.BeritaScreen, "Nomor\nPenting"),
                      IconMenu('assets/icons_2/location.png',
                          RouteName.BeritaScreen, "Peta Lokasi\nPenting"),
                      IconMenu('assets/icons_2/info.png',
                          RouteName.EdukasiBencanaScreen, "Edukasi\nBencana"),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 24.0, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconMenu('assets/icons_2/galeri.png',
                        RouteName.BeritaScreen, "Galeri"),
                    // IconMenu('assets/icons_2/warning.png', RouteName.BeritaScreen,
                    //     "Peta Laporkan\nBencana"),
                    IconMenu('assets/icons_2/weather.png',
                        RouteName.BeritaScreen, "Info\nCuaca"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //create floating button to add new report
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(RouteName.BeritaScreen);
        },
        child: Icon(Icons.add),
        backgroundColor: ColorConstants.PrimaryCo,
      ),
    );
  }
}
