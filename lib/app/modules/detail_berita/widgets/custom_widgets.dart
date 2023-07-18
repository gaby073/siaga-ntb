import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CustomWidgetsDetailBerita extends StatelessWidget {
  const CustomWidgetsDetailBerita({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
      expandedHeight: 275.0,
      backgroundColor: Colors.white,
      elevation: 0.0,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'assets/pictures/banjir.png',
          fit: BoxFit.cover,
        ),
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(0.0),
        child: Container(
          height: 32.0,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(32.0),
              topRight: Radius.circular(32.0),
            ),
          ),
          child: Container(
            width: 40.0,
            height: 3.0,
            decoration: BoxDecoration(
              color: Colors.black87,
              borderRadius: BorderRadius.circular(100.0),
            ),
          ),
        ),
      ),
      // leadingWidth: 80.0,
      leading: Padding(
        padding: const EdgeInsets.only(top: 24.0),
        child: Container(
          margin: const EdgeInsets.only(left: 24.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(56.0),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
              child: Container(
                height: 64.0,
                width: 64.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.20),
                ),
                child: InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Image.asset(
                    'assets/icons_3/arrow-left.png',
                    fit: BoxFit.cover,
                    color: Colors.black,
                    width: 28.0,
                    height: 28.0,
                  ),
                ),
                //     SvgPicture.asset('assets/icons/arrow-ios-back-outline.svg'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
