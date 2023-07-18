import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:siaga_ntb/app/routes/app_pages.dart';
import 'package:siaga_ntb/constant.dart';

import '../models/list_model_home.dart';

Row Header() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lokasi Saat ini",
            style: SubTitleWhite,
          ),
          SizedBox(height: 2),
          Text(
            "Kota Mataram",
            style: MediumHeadingStyle1,
          )
        ],
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          'assets/icons_3/notif.png',
          color: ColorConstants.WhiteCo,
          width: 32,
          // height: 48,
        ),
      )
    ],
  );
}

Row Weather() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "24°c",
            style: TextStyle(
              fontSize: 68,
              fontWeight: FontWeight.bold,
              color: ColorConstants.WhiteCo,
            ),
          ),
          Text(
            "Berawan",
            style: TextStyle(
              fontSize: 16,
              color: ColorConstants.WhiteCo,
            ),
          ),
        ],
      ),
      Image.asset(
        'assets/awan4.png',
        // width: 140,
        // height: 88,
      )
    ],
  );
}

Widget IconHome(String img, txt) {
  return Column(
    children: [
      Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          color: ColorConstants.WhiteCo,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          // widthFactor: 24.0,
          // heightFactor: 24.0,
          child: Image.asset(
            img,
            width: 36,
            height: 36,
          ),
        ),
      ),
      SizedBox(height: 4),
      Text(
        txt,
        textAlign: TextAlign.center,
      )
    ],
  );
}

Widget Info(String txt1, txt2) {
  return InkWell(
    onTap: () {
      Get.toNamed(Routes.BERITA);
    },
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              txt1,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              txt2,
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        Text("Selengkapnya")
      ],
    ),
  );
}

Widget InfoBencana() {
  return InkWell(
    onTap: () {
      Get.toNamed(Routes.DETAIL_BERITA);
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        height: 200,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 12),
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorConstants.WhiteCo,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: Image.asset(GambarBencana[index]).image,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 12, right: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            TitleBeritaBencana[index],
                            style: TextStyle(
                                color: ColorConstants.WhiteCo, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    ),
  );
}

Widget BeritaBencana() {
  return InkWell(
    onTap: () {
      Get.toNamed(Routes.DETAIL_BERITA);
    },
    child: Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Container(
        height: 200,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(right: 12),
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorConstants.WhiteCo,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: Image.asset(GambarBencana[index]).image,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left: 8, bottom: 12, right: 8),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            TitleBeritaBencana[index],
                            style: TextStyle(
                                color: ColorConstants.WhiteCo, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    ),
  );
}
