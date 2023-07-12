import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:siaga_ntb/constant.dart';

import '../models/list_berita.dart';

class Berita extends StatelessWidget {
  const Berita({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.PrimaryCo,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24, top: 8),
              child: Row(
                children: [
                  //head
                  IconButton(
                    onPressed: () {},
                    icon: const ImageIcon(
                      AssetImage('assets/icons_2/arrow.png'),
                      size: 32,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                  const Text(
                    "Berita",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 90,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: ColorConstants.BgCo,
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 24),
                child: ListView.builder(
                  itemCount: ListBerita.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Card(
                      elevation: 1,
                      child: ListTile(
                        leading: Image.asset('assets/pictures/banjir.png'),
                        title: Text(ListBerita[index],
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        subtitle: Text(Selengkapnya[index],
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w300)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:siaga_ntb/models/list_berita.dart';

// class Berita extends StatelessWidget {
//   Berita({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue,
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
//             child: Row(
//               children: [
//                 IconButton(
//                   icon: Icon(
//                     Icons.arrow_back,
//                     color: Colors.white,
//                   ),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                 ),
//                 SizedBox(width: 50),
//                 Text(
//                   'Berita',
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                       color: Colors.white),
//                 ),
//               ],
//             ),
//           ),
//           //create tab bar for group contact

//           Container(
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20),
//                       topRight: Radius.circular(20)),
//                   color: Colors.white),
//               height: MediaQuery.of(context).size.height - 80,
//               child: Padding(
//                   padding: const EdgeInsets.symmetric(vertical: 20),
//                   child: ListView.builder(
//                       itemCount: ListBerita.length,
//                       shrinkWrap: true,
//                       itemBuilder: ((context, index) {
//                         return Padding(
//                             padding: EdgeInsets.only(left: 24, right: 24),
//                             child: Container(
//                                 height: 72,
//                                 decoration: BoxDecoration(boxShadow: [
//                                   BoxShadow(
//                                     color: Colors.black.withOpacity(0.08),
//                                     spreadRadius: 0,
//                                     blurRadius: 10,
//                                     offset: Offset(0, 2),
//                                   )
//                                 ]),
//                                 child: Card(
//                                     elevation: 0,
//                                     child: ListTile(
//                                       leading:
//                                           Image.asset('assets\berita\ntb.png'),
//                                       title: Text(ListBerita[index],
//                                           style: TextStyle(
//                                               fontSize: 12,
//                                               fontWeight: FontWeight.w600)),
//                                       subtitle: Text(DetailBerita[index],
//                                           style: TextStyle(
//                                               fontSize: 12,
//                                               fontWeight: FontWeight.w300)),
//                                     ),),),);
//                       },),),),)
//         ],
//       ),
//     );
//   }
// }
