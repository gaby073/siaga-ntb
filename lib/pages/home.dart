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
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconMenu('assets/icons/call.png', RouteName.BeritaScreen,
                      "Nomor\nPenting"),
                  IconMenu('assets/icons/peta.png', RouteName.BeritaScreen,
                      "Peta Lokasi\nPenting"),
                  IconMenu('assets/icons/info.png', RouteName.BeritaScreen,
                      "Edukasi\nBencana"),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconMenu('assets/icons/gallery.png', RouteName.BeritaScreen,
                      "Galeri"),
                  IconMenu('assets/icons/warning.png', RouteName.BeritaScreen,
                      "Peta Laporkan\nBencana"),
                  IconMenu('assets/icons/weather.png', RouteName.BeritaScreen,
                      "Info\nCuaca"),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
