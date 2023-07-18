import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:siaga_ntb/app/modules/home/controllers/home_controller.dart';
import 'package:siaga_ntb/constant.dart';

class HomeNav extends GetView<HomeController> {
  HomeNav({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Obx(() => Scaffold(
          body: controller.screens[controller.selectedIndex.value],
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8),
            child: GNav(
              gap: 10,
              // haptic: true,
              iconSize: 28,
              color: ColorConstants.OrangeCo.withOpacity(0.6),
              activeColor:
                  ColorConstants.OrangeCo, // selected icon and text color
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              tabBackgroundColor: Colors.white,
              tabActiveBorder: Border.all(
                  color: Colors.orange, width: 1), // tab button border

              selectedIndex: controller.selectedIndex.value,
              onTabChange: (index) {
                controller.selectedIndex.value = index;
              },
              tabs: [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.newspaper,
                  text: 'Berita',
                ),
                GButton(
                  icon: Icons.call,
                  text: 'Nomor Penting',
                ),
              ],
            ),
          ),
        ));
  }
}
