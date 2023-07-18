import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:siaga_ntb/constant.dart';

import '../../berita/models/list_berita.dart';
import '../controllers/galeri_controller.dart';
import '../models/models.dart';

class GaleriView extends GetView<GaleriController> {
  const GaleriView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(GaleriController());
    return Scaffold(
      backgroundColor: ColorConstants.OrangeCo,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
                child: Row(
                  children: [
                    IconButton(
                      icon: Image.asset(
                        'assets/icons_3/arrow-left.png',
                        color: ColorConstants.WhiteCo,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    SizedBox(width: 110),
                    Text(
                      'Galeri',
                      style: MediumHeadingStyle1,
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                // height: MediaQuery.of(context).size.height - 80,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Column(
                    children: [
                      Obx(() {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              child: Image.asset(
                                'assets/icons_3/gallery.png',
                                color: controller.isClicked.value == 0
                                    ? ColorConstants.OrangeCo
                                    : Colors.grey,
                                height:
                                    controller.isClicked.value == 0 ? 42 : 37,
                                fit: BoxFit.cover,
                              ),
                              onTap: () {
                                controller.isClicked.value = 0;
                              },
                            ),
                            InkWell(
                              child: Image.asset(
                                'assets/icons_3/video.png',
                                color: controller.isClicked.value == 1
                                    ? ColorConstants.OrangeCo
                                    : Colors.grey,
                                height:
                                    controller.isClicked.value == 1 ? 34 : 32,
                                fit: BoxFit.cover,
                              ),
                              onTap: () {
                                controller.isClicked.value = 1;
                              },
                            ),
                          ],
                        );
                      }),
                      Obx(() => controller.isClicked.value == 0
                          ? ImageGrid()
                          : VideoGrid()),
                      Obx(() => controller.isClicked.value == 1
                          ? VideoGrid()
                          : ImageGrid())
                    ],
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

class ImageGrid extends StatelessWidget {
  const ImageGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 24, right: 24, top: 20),
      itemCount: gambar.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          // childAspectRatio: 5,
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Stack(
            children: [
              Image.asset(
                gambar[index],
                width: 180,
                height: 180,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  width: 152,
                  child: Text(
                    ListBerita[index],
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                    //maxLines: 2,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class VideoGrid extends StatelessWidget {
  const VideoGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // padding: EdgeInsets.only(left: 32, right: 32, top: 20),
      itemCount: video.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: [
                  Image.asset(
                    video[index],
                    width: 350,
                    height: 175,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                      // width: 180,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/icons_3/playbutton.png',
                            width: 28,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 200,
                            child: Text(
                              ListBerita[index],
                              overflow: TextOverflow.clip,
                              style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                              //maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
