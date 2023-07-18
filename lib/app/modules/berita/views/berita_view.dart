import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siaga_ntb/app/data/news_api.dart';

import '../../../../constant.dart';
import '../../../data/model_news.dart';
import '../../../routes/app_pages.dart';
import '../../galeri/models/models.dart';
import '../controllers/berita_controller.dart';
import '../models/list_berita.dart';

class BeritaView extends GetView<BeritaController> {
  BeritaView({Key? key}) : super(key: key);

  BeritaController beritaController = Get.put(BeritaController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.OrangeCo,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2, bottom: 2, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Berita",
                      style: MediumHeadingStyle1,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    IconButton(
                        splashRadius: 25,
                        onPressed: () {
                          controller.launchURL();
                        },
                        icon: ImageIcon(
                          AssetImage(
                            'assets/icons_3/internet.png',
                          ),
                          color: ColorConstants.WhiteCo,
                          size: 24,
                        )),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  color: ColorConstants.BgCo,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: ListBerita.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        child: Container(
                          height: 86,
                          width: 312,
                          color: ColorConstants.WhiteCo,
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                child: Container(
                                  //create shadow
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.5),
                                        spreadRadius: 0.5,
                                        blurRadius: 5,
                                        offset: Offset(
                                            0, 4), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  width: 109,
                                  height: 86,
                                  child: Image.asset(
                                    gambar[2],
                                    height: 110,
                                    width: 90,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    Get.toNamed(Routes.DETAIL_BERITA);
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        ListBerita[index],
                                        style: MediumHeadingStyle2,
                                        // softWrap: true,
                                      ),
                                      SizedBox(
                                        height: 4,
                                      ),
                                      Text(
                                        Selengkapnya[index],
                                        style: MediumSubTitle,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
