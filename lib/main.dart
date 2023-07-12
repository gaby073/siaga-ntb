import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siaga_ntb/constant.dart';
import 'package:siaga_ntb/pages/berita.dart';
import 'package:siaga_ntb/pages/edukasi_bencana.dart';
import 'package:siaga_ntb/pages/home.dart';
import 'package:siaga_ntb/pages/nomor_penting.dart';
import 'package:siaga_ntb/pages/splash.dart';
import 'package:siaga_ntb/routes/page_route.dart';

import 'pages/detail_berita.dart';
import 'pages/peta_lokasi.dart';
import 'routes/route_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.BgCo,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: PetaLokasi(),
      initialRoute: '/',
      getPages: PageRoutes.pages,
    );
  }
}
