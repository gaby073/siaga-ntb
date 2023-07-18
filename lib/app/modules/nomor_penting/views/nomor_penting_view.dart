import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../constant.dart';
import '../controllers/nomor_penting_controller.dart';
import '../models.dart/list_nomor.dart';

class NomorPentingView extends GetView<NomorPentingController> {
  const NomorPentingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NomorPentingController());
    return Scaffold(
      backgroundColor: ColorConstants.OrangeCo,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2, right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Nomor Penting',
                      style: MediumHeadingStyle1,
                    ),
                    SizedBox(
                      width: 66,
                    ),
                    IconButton(
                        splashRadius: 25,
                        onPressed: () {
                          controller.launchNomorURL();
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
              //create tab bar for group contact
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: ColorConstants.BgCo,
                ),
                // height: Get.height - 125,
                // height: MediaQuery.of(context).size.height - 168,
                child: Padding(
                  padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 4, right: 4),
                        height: 50,
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Chip(
                              label: Text('Fasilitas Kesehatan'),
                              backgroundColor: Colors.white,
                              side: BorderSide(color: ColorConstants.OrangeCo),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              label: Text('Intansi Kebencanaan'),
                              backgroundColor: Colors.white,
                              side: BorderSide(color: ColorConstants.OrangeCo),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              label: Text('Kedutaan Besar'),
                              backgroundColor: Colors.white,
                              side: BorderSide(color: ColorConstants.OrangeCo),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Chip(
                              label: Text('Lainnya'),
                              backgroundColor: Colors.white,
                              side: BorderSide(color: ColorConstants.OrangeCo),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ),
                      ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: TitleNomor.length,
                        shrinkWrap: true,
                        itemBuilder: ((context, index) {
                          return Container(
                            child: Card(
                              elevation: 1,
                              child: ListTile(
                                leading: ImageIcon(
                                  AssetImage('assets/icons_3/call.png'),
                                  size: 35,
                                  color: ColorConstants.OrangeCo,
                                ),
                                title: Text(
                                  TitleNomor[index],
                                  style: MediumHeadingStyle2,
                                ),
                                // style: TextStyle(
                                //     fontSize: 12, fontWeight: FontWeight.w600)),
                                subtitle: Text(
                                  SubTitleNomor[index],
                                  style: SubTitleBlack,
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
