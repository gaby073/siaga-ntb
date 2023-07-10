import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:siaga_ntb/constant.dart';

class EdukasiBencana extends StatelessWidget {
  EdukasiBencana({super.key});

  @override
  Widget build(BuildContext context) {
    List bencana = [
      'Banjir',
      'Banjir Bandang',
      'Kebakaran Hutan',
      'Gempa Bumi',
      'Tsunami',
      'Tanah Longsor',
      'Angin Puting Beliung',
      'Kekeringan',
      'Kebakaran',
      'Kebakaran Lahan',
      'Kebakaran Hutan',
      'Kebakaran Hutan dan Lahan',
    ];

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 83, top: 36),
            child: Row(
              children: [
                //create icon button picture from assets
                IconButton(
                  onPressed: () {
                    // Get.put();ss
                  },
                  icon: ImageIcon(
                    AssetImage("assets/icons_2/arrow.png"),
                    size: 32,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 50),
                Text(
                  'Edukasi Bencana',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
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
            height: MediaQuery.of(context).size.height - 84,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                  itemCount: bencana.length,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24),
                      child: Container(
                        height: 72,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              spreadRadius: 0,
                              blurRadius: 10,
                              offset:
                                  Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Card(
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16),
                              child: Row(children: [
                                //icon button from asset
                                ImageIcon(
                                  AssetImage("assets/icons_2/info.png"),
                                  size: 32,
                                  color: ColorConstants.PrimaryCo,
                                ),
                                SizedBox(
                                  width: 16,
                                ),
                                Text(
                                  bencana[index],
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ),
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }
}
