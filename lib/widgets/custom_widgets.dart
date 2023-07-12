import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constant.dart';

Container CardCuaca() {
  return Container(
    child: Padding(
      padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 18),
            Text(
              "24°c",
              style: TextStyle(
                  fontSize: 52,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Berawan",
              style: TextStyle(color: Colors.white, fontSize: 14),
            )
          ],
        ),
        Column(
          children: [
            Container(
              height: 100,
              width: 139,
              child: Image.asset(
                "assets/awan3.png",
                fit: BoxFit.fill,
              ),
            ),
            Row(
              children: [
                //create icon location
                Icon(
                  Icons.location_on_rounded,
                  color: Colors.white,
                  size: 14,
                ),
                SizedBox(width: 8),
                Text(
                  "Lombok Timur",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ]),
    ),
    width: double.infinity,
    height: 172,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/card.png'),
        fit: BoxFit.fill,
      ),
      //border radius only top right and top left
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
      // color: ColorConstants.PrimaryCo,
    ),
  );
}

Column head() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Lokasi saat ini",
                style: TextStyle(fontSize: 12),
              ),
              Text(
                "Lombok Timur",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          //create icon button
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none_outlined,
              //color from hex
              color: Colors.white,
              size: 32,
            ),
          ),
        ],
      )
    ],
  );
}

Container IconMenu(String gambar, String routeName, String text) {
  return Container(
    child: Column(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(routeName);
          },
          child: Container(
            height: 32,
            width: 32,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(gambar), fit: BoxFit.fill)),
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
