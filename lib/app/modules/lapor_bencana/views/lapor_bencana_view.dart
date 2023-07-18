import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:siaga_ntb/constant.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../controllers/lapor_bencana_controller.dart';

class LaporBencanaView extends GetView<LaporBencanaController> {
  const LaporBencanaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(LaporBencanaController());
    return Scaffold(
        // backgroundColor: ColorConstants.OrangeCo,
        appBar: AppBar(
          backgroundColor: ColorConstants.OrangeCo,
          title: Text('Laporkan Bencana'),
          centerTitle: true,
        ),
        body: WebViewWidget(controller: controller.wvController)
        // SingleChildScrollView(
        //   child: SafeArea(
        //     child: Column(
        //       children: [
        //         Padding(
        //           padding:
        //               const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        //           child: Row(
        //             children: [
        //               IconButton(
        //                 icon: Icon(
        //                   Icons.arrow_back,
        //                   color: Colors.white,
        //                 ),
        //                 onPressed: () {
        //                   Get.back();
        //                 },
        //               ),
        //               SizedBox(width: 50),
        //               Text(
        //                 'Laporkan Bencana',
        //                 style: TextStyle(
        //                     fontSize: 20,
        //                     fontWeight: FontWeight.w600,
        //                     color: Colors.white),
        //               ),
        //             ],
        //           ),
        //         ),
        //         Container(
        //           decoration: BoxDecoration(
        //               borderRadius: BorderRadius.only(
        //                   topLeft: Radius.circular(20),
        //                   topRight: Radius.circular(20)),
        //               color: Colors.white),
        //           height: MediaQuery.of(context).size.height - 80,
        //           child: Padding(
        //             padding: EdgeInsets.all(20.0),
        //             child: Form(
        //                 child: Column(
        //               children: [
        //                 TextFormField(
        //                   controller: controller.judulBencana,
        //                   decoration: InputDecoration(
        //                     labelText: 'Judul Bencana',
        //                     border: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(10.0),
        //                     ),
        //                   ),
        //                 ),
        //                 SizedBox(
        //                   height: 12,
        //                 ),
        //                 TextFormField(
        //                   controller: controller.keteranganBencana,
        //                   maxLines: 5,
        //                   decoration: InputDecoration(
        //                     enabledBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(10.0),
        //                       borderSide:
        //                           BorderSide(color: ColorConstants.OrangeCo),
        //                     ),
        //                     labelText: 'Keterangan Bencana',
        //                   ),
        //                 ),
        //                 SizedBox(
        //                   height: 12,
        //                 ),
        //                 TextFormField(
        //                   decoration: InputDecoration(
        //                     enabledBorder: OutlineInputBorder(
        //                       borderRadius: BorderRadius.circular(10.0),
        //                       borderSide:
        //                           BorderSide(color: ColorConstants.OrangeCo),
        //                     ),
        //                     labelText: 'Lokasi Bencana',
        //                     border: OutlineInputBorder(
        //                       borderSide:
        //                           BorderSide(color: ColorConstants.OrangeCo),
        //                       borderRadius: BorderRadius.circular(10.0),
        //                     ),
        //                   ),
        //                 ),
        //                 SizedBox(
        //                   height: 12,
        //                 ),
        //                 ElevatedButton(
        //                     onPressed: () {},
        //                     style: ElevatedButton.styleFrom(
        //                       elevation: 0,
        //                       backgroundColor: Colors.white,
        //                       padding: EdgeInsets.all(12),
        //                       shape: RoundedRectangleBorder(
        //                         side: BorderSide(color: Colors.orange, width: 1),
        //                         borderRadius: BorderRadius.circular(10.0),
        //                       ),
        //                     ),
        //                     child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         Icon(
        //                           Icons.pin_drop,
        //                           color: ColorConstants.OrangeCo,
        //                         ),
        //                         SizedBox(
        //                           width: 10.0,
        //                         ),
        //                         Text('Pilih Lokasi Pada Peta',
        //                             style: TextStyle(color: Colors.black)),
        //                       ],
        //                     )),
        //                 SizedBox(
        //                   height: 12,
        //                 ),
        //                 ElevatedButton(
        //                     onPressed: () {},
        //                     style: ElevatedButton.styleFrom(
        //                       elevation: 0,
        //                       backgroundColor: Colors.white,
        //                       padding: EdgeInsets.all(12),
        //                       shape: RoundedRectangleBorder(
        //                         side: BorderSide(
        //                             color: ColorConstants.OrangeCo, width: 1),
        //                         borderRadius: BorderRadius.circular(10.0),
        //                       ),
        //                     ),
        //                     child: Row(
        //                       mainAxisAlignment: MainAxisAlignment.center,
        //                       children: [
        //                         Icon(Icons.camera_alt,
        //                             color: ColorConstants.OrangeCo),
        //                         SizedBox(
        //                           width: 10.0,
        //                         ),
        //                         Text('Pilih Foto',
        //                             style: TextStyle(color: Colors.black)),
        //                       ],
        //                     )),
        //                 SizedBox(
        //                   height: 12,
        //                 ),
        //                 Container(
        //                   height: 50,
        //                   width: double.infinity,
        //                   child: ElevatedButton(
        //                     style: ElevatedButton.styleFrom(
        //                       elevation: 0,
        //                       primary: ColorConstants.OrangeCo,
        //                       shape: RoundedRectangleBorder(
        //                         borderRadius: BorderRadius.circular(10.0),
        //                       ),
        //                     ),
        //                     onPressed: () {},
        //                     child: Text(
        //                       'Laporkan Bencana',
        //                       style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 14,
        //                       ),
        //                     ),
        //                   ),
        //                 ),
        //               ],
        //             )),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
