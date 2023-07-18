import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siaga_ntb/constant.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../routes/app_pages.dart';
import '../controllers/edukasi_bencana_controller.dart';
import '../models/list_bencana.dart';
import 'package:google_fonts/google_fonts.dart';

class EdukasiBencanaView extends GetView<EdukasiBencanaController> {
  const EdukasiBencanaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.OrangeCo,

      //VERSI WEBVIEW
      // appBar: AppBar(
      //     centerTitle: true,
      //     backgroundColor: ColorConstants.OrangeCo,
      //     title: Text('Edukasi Bencana')),
      // // backgroundColor: ColorConstants.OrangeCo,
      // body: WebViewWidget(controller: controller.edukasiController),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 16, top: 4, bottom: 4, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: ImageIcon(
                      AssetImage("assets/icons_2/arrow.png"),
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Edukasi Bencana',
                    style: MediumHeadingStyle1,
                  ),
                  IconButton(
                    splashRadius: 10,
                    onPressed: () {
                      controller.launchEdukasiURL();
                    },
                    icon: ImageIcon(
                      AssetImage(
                        'assets/icons_3/internet.png',
                      ),
                      color: ColorConstants.WhiteCo,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: ColorConstants.BgCo,
              ),
              height: MediaQuery.of(context).size.height - 89.9,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 24),
                child: ListView.builder(
                  itemCount: bencana.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                        left: 24,
                        right: 24,
                      ),
                      child: SizedBox(
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(bottom: 8),
                            height: 72,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    spreadRadius: 0,
                                    offset: Offset(0, 4),
                                    blurRadius: 10,
                                  ),
                                ]),
                            child: Center(
                              child: ListTile(
                                leading: ImageIcon(
                                  AssetImage('assets/icons_3/info2.png'),
                                  size: 32,
                                  color: ColorConstants.OrangeCo,
                                ),
                                title: Text(
                                  bencana[index],
                                  style: MediumHeadingStyle2,
                                ),
                                onTap: () {},
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
